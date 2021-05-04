import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tripoo/application/property/create_property/bloc/property_form_bloc.dart';
import 'package:dartz/dartz.dart' as dz;
import 'package:tripoo/domain/entity/property/property.dart';

import '../../../../../injection.dart';


class UpdatePropertyFormWidget extends HookWidget {
  UpdatePropertyFormWidget({
    Key key,
    @required this.property,
  }) : super(key: key);

  final Property property;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        lazy: false,
        create: (context) => getIt<PropertyFormBloc>()..add(PropertyFormEvent.initialized(dz.optionOf(property))),
      child: BlocConsumer<PropertyFormBloc, PropertyFormState>(
        listenWhen: (p, c) => p.isSaving != c.isSaving,
        listener: (context, state) {
          state.propertyFailureOrSuccessOption
              .fold(
                () => null,
                (either) {
                  return either.fold(
                          (failure) {
                            Navigator.of(context, rootNavigator: true).pop();
                            Flushbar(
                              margin: const EdgeInsets.all(8.0),
                              borderRadius: 8,
                              icon: const Icon(EvaIcons.alertTriangleOutline),
                              message: failure.map(
                                  serverError: (_) => "Update failed. Please try again later",
                                  unExpected: (_) => "An unexpected error occurred.",
                                  uploadFileFailed: (_) => "",
                                  insufficientPermission: (_) => "Insufficient permission to continue with the  operation.",
                                  unableToUpdate: (_) => "Update failed",
                                  wrongFormat: (_) => "",
                                  emptyDocuments: (_) => "",
                              )
                            )
                            .show(context);
                          },
                          (r) {
                            Navigator.of(context, rootNavigator: true).pop();
                          },
                  );
                },
          );
        },
        builder: (context, state) {
         return SizedBox(
           child: Padding(
             padding: const EdgeInsets.all(16.0),
             child: Column(
               mainAxisSize: MainAxisSize.min,
               crossAxisAlignment:
               CrossAxisAlignment.start,
               children: [
                 const Text("Update property",
                     style: TextStyle(
                       fontFamily: "ProductSans",
                       fontSize: 20,
                     )),
                 const SizedBox(height: 30),
                 Form(
                   key: _formKey,
                   autovalidateMode: state.showErrors ? AutovalidateMode.always : AutovalidateMode.onUserInteraction,
                   child: Column(
                     crossAxisAlignment:
                     CrossAxisAlignment.start,
                     children: [
                       TextFormField(
                           decoration:
                           const InputDecoration(
                               labelText:
                               "Property name"),
                        onChanged: (v) => context.read<PropertyFormBloc>()
                         .add(PropertyFormEvent.nameChanged(v)),
                         validator: (v) =>
                             context.read<PropertyFormBloc>()
                             .state
                             .property
                             .name
                             .value
                             .fold(
                                 (f) => f.maybeMap(
                                   empty: (_) => "Property name is required.",
                                   exceedingLength: (_) => "Name is too long",
                                   belowMinLength: (_) => "Name is too short",
                                   orElse: () => null,
                                 ),
                                 (_) => null,
                         )
                       ),
                       const SizedBox(height: 10),
                       TextFormField(
                           maxLines: 5,
                           decoration: const InputDecoration(
                               labelText:
                               "Property description"),
                         onChanged: (v) => context.read<PropertyFormBloc>()
                           .add(PropertyFormEvent.descriptionChanged(v)),
                         validator: (v) => context.read<PropertyFormBloc>()
                         .state
                         .property
                         .description
                         .value
                         .fold(
                                 (f) => f.maybeMap(
                                     empty: (_) => "Property description is required",
                                     belowMinLength: (_) => "Description is too short",
                                     exceedingLength: (_) => "Description is too long",
                                     orElse: () => null,
                                 ),
                                 (_) => null,
                         ),
                       ),
                       const SizedBox(height: 10),
                       ButtonTheme(
                         shape: RoundedRectangleBorder(
                           borderRadius:
                           BorderRadius.circular(6.0),
                         ),
                         child: RaisedButton(
                           color: const Color(0xff00DFC8),
                           elevation: 0.0,
                           onPressed: state.isSaving ? null :  () {
                             if(_formKey.currentState.validate()) {
                               context.read<PropertyFormBloc>().add(const PropertyFormEvent.save());
                             }
                           } ,
                           child: state.isSaving ? const SpinKitFadingFour(
                             size: 20,
                             color: Colors.white,
                           ) : const Text(
                             "Save",
                             style: TextStyle(
                               fontSize: 16,
                               color: Colors.white,
                             ),
                           ),
                         ),
                       )
                     ],
                   ),)
               ],
             ),
           ),
         );
        }
      ),
    );
  }
}