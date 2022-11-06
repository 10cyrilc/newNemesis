//
//  Generated file. Do not edit.
//

import FlutterMacOS
import Foundation


import location

func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {
  LocationPlugin.register(with: registry.registrar(forPlugin: "LocationPlugin"))

import cloud_firestore
import firebase_auth
import firebase_core

func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {
  FLTFirebaseFirestorePlugin.register(with: registry.registrar(forPlugin: "FLTFirebaseFirestorePlugin"))
  FLTFirebaseAuthPlugin.register(with: registry.registrar(forPlugin: "FLTFirebaseAuthPlugin"))
  FLTFirebaseCorePlugin.register(with: registry.registrar(forPlugin: "FLTFirebaseCorePlugin"))

}
