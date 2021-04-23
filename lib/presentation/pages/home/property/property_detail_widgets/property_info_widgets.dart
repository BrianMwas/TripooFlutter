import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:geocoder/geocoder.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:tripoo/application/property/create_property/bloc/property_form_bloc.dart';
import 'package:tripoo/domain/entity/property/property.dart';

import '../../../../../injection.dart';

class PropertyInfoWidget extends StatelessWidget {
  final Property property;

  const PropertyInfoWidget({
    Key key,
    @required this.property,
  }): super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<PropertyFormBloc>()..add(PropertyFormEvent.initialized(optionOf(property)))
        )
      ],
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text("Overview")
                  ),
              BlocConsumer<PropertyFormBloc, PropertyFormState>(
                listenWhen: (p, c) => p.isSaving != c.isSaving,
                buildWhen: (p, c) => p.propertyFailureOrSuccessOption != c.propertyFailureOrSuccessOption,
                listener: (context, state) {
                  state.propertyFailureOrSuccessOption
                      .fold(
                          () => null,
                          (option) =>
                            option.fold(
                                    (l) => Flushbar(
                                      margin: const EdgeInsets.all(8.0),
                                        borderRadius: 8.0,
                                        icon: const Icon(EvaIcons.alertCircle),
                                        dismissDirection: FlushbarDismissDirection.HORIZONTAL,
                                        message: l.maybeMap(
                                          unExpected: (_) => "An unexpected error occurred. Please try again later",
                                        insufficientPermission: (_) => "You do not have permission to change the resource. Please contact support.",
                                        orElse: () => null)).show(context),
                                    (r) {
                                      Flushbar(
                                        margin: const EdgeInsets.all(8.0),
                                        borderRadius: 8.0,
                                        duration: const Duration(seconds: 2),
                                        dismissDirection: FlushbarDismissDirection.HORIZONTAL,
                                        message: "Update was successful"
                                      ).show(context);
                                    },
                            ),
                  );
                },
                builder: (context, state) {
                  return Stack(children: [
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width - 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: state.property.imageURL.isEmpty ? const DecorationImage(
                            image: AssetImage("assets/images/placeholder.png"),
                            fit: BoxFit.cover,
                          ) : DecorationImage(
                            image: NetworkImage(state.property.imageURL),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      height: 150,
                      padding: const EdgeInsets.all(8.0),
                      width: MediaQuery.of(context).size.width - 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.black87.withOpacity(0.55), Colors.black87],
                        ),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              state.property.name.getOrCrash(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontFamily: "ProductSans",
                                fontSize: 20,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  state.property.description.getOrCrash(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: state.property.live ? const Icon(
                                      EvaIcons.eyeOutline,
                                      color: Colors.white
                                  ) : const Icon(
                                      EvaIcons.eyeOff2Outline,
                                      color: Colors.orangeAccent
                                  )
                                ),
                              ],
                            )
                          ]),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: IconButton(
                          onPressed: () {
                            showBarModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                              ),
                              builder: (context) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: const Text("Update property", style: TextStyle(fontFamily: "ProductSans", color: Colors.black)),
                                  ),
                                  const SizedBox(height: 5),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                                    child: Row(
                                      children: const [
                                        Icon(EvaIcons.questionMarkCircleOutline, color: Colors.white24),
                                        SizedBox(width: 4),
                                        Text("Please note that you won't be able to change the property's location", style: TextStyle(color: Colors.white12)),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: UpdatePropertyWidget(),
                                  )
                                ]
                              )
                            );
                          },
                          icon: Icon(
                              EvaIcons.editOutline,
                              color: Colors.white
                          )
                      ),
                    )
                  ]);
                },
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Location"),
              ),
              Stack(
                  children: [
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width - 32,
                      margin: const EdgeInsets.symmetric(vertical : 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/phone_nav.jpg"
                              )
                          )
                      ),
                    ),
                    Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width - 32,
                        margin: const EdgeInsets.symmetric(vertical : 8),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              colors: [
                                Colors.black87.withOpacity(0.25),
                                Colors.black87.withOpacity(0.75)
                              ]
                          ),
                        ),
                        child: FutureBuilder(
                          future: Geocoder.local.findAddressesFromCoordinates(Coordinates(property.location.latitude, property.location.longitude)),
                          builder: (context, snapshot) {
                            final address = snapshot.data.first;
                            return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(address.featureName.toString(), style: const TextStyle(color: Colors.white, fontFamily: "ProductSans"),),
                                  Text(address.addressLine as String, style: TextStyle(color: Colors.green,),)
                                ]
                            );
                          }
                        )
                    ),
                    // Map view for  the property.
                    Positioned(
                        top: 20,
                        right: 10,
                        child: IconButton(
                          icon: Icon(EvaIcons.pin, color: Colors.white),
                          onPressed: () {
                            print("View on map");
                          },
                        )
                    ),
                  ]
              ),
              //Manage agents include removing, adding, editing.
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Manage agents"),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        EvaIcons.plus
                      )
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Slidable(
                        child: const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage("https://source.unsplash.com/user/erondu"),
                          ),
                          title: Text("Kimani Njuguna", style: TextStyle(fontFamily: "ProductSans")),
                          subtitle: Text("Caretaker")
                        ),
                        actionPane: const SlidableDrawerActionPane(),
                        actions: <Widget>[
                          IconSlideAction(
                            icon: EvaIcons.editOutline,
                            onTap: () {
                              print("edit");
                            }
                          ),
                          IconSlideAction(
                              icon: EvaIcons.trashOutline,
                              onTap: () {
                                print("edit");
                              }
                          ),
                        ],
                      secondaryActions: [
                        IconSlideAction(
                            icon: EvaIcons.phoneCallOutline,
                            onTap: () {
                              print("edit");
                            }
                        ),
                        IconSlideAction(
                            icon: EvaIcons.messageSquareOutline,
                            onTap: () {
                              print("edit");
                            }
                        ),
                      ],
                    );
                  },
                )
              ),
                 const Padding(
                    padding: EdgeInsets.only(bottom: 5.0, top: 10),
                    child: ListTile(
                        title: Text("Hide property", style: TextStyle(color: Colors.orangeAccent, fontFamily: "ProductSans",)),
                        subtitle:Text("Keep from being listed"),
                        trailing: Icon(
                          EvaIcons.eyeOff2Outline,
                          color: Colors.orangeAccent,
                        )
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom:18.0),
                    child: ListTile(
                      title: Text("Delete property", style: TextStyle(color: Colors.redAccent, fontFamily: "ProductSans",)),
                      subtitle:Text("Remove property and all its units"),
                      trailing: Icon(
                        EvaIcons.trashOutline,
                        color: Colors.redAccent,
                      )
                    ),
                  ),

            ]),
          ),
        ),
      ),
    );
  }
}

class UpdatePropertyWidget extends StatelessWidget {
  const UpdatePropertyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            onChanged: (v) => context.read<PropertyFormBloc>()
            .add(PropertyFormEvent.nameChanged(v)),
            decoration: const InputDecoration(
              labelText: "Property name",
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
            cursorColor: Theme
                .of(context)
                .accentColor,
          ),
          const SizedBox(height: 10),
          TextFormField(
            onChanged: (v) => context.read<PropertyFormBloc>()
                .add(PropertyFormEvent.descriptionChanged(v)),
            decoration: const InputDecoration(
              labelText: "Property description",
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
            cursorColor: Theme
                .of(context)
                .accentColor,
          )
        ]
      )
    );
  }
}
