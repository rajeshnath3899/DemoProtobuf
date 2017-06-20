// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/protobuf/unittest_mset.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

// Protocol Buffers - Google's data interchange format
// Copyright 2008 Google Inc.  All rights reserved.
// https://developers.google.com/protocol-buffers/
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
//
//     * Redistributions of source code must retain the above copyright
// notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above
// copyright notice, this list of conditions and the following disclaimer
// in the documentation and/or other materials provided with the
// distribution.
//     * Neither the name of Google Inc. nor the names of its
// contributors may be used to endorse or promote products derived from
// this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

// Author: kenton@google.com (Kenton Varda)
//  Based on original Protocol Buffers design by
//  Sanjay Ghemawat, Jeff Dean, and others.
//
// This file is similar to unittest_mset_wire_format.proto, but does not
// have a TestMessageSet, so it can be downgraded to proto1.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct ProtobufUnittest_TestMessageSetContainer: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".TestMessageSetContainer"

  var messageSet: Proto2WireformatUnittest_TestMessageSet {
    get {return _storage._messageSet ?? Proto2WireformatUnittest_TestMessageSet()}
    set {_uniqueStorage()._messageSet = newValue}
  }
  /// Returns true if `messageSet` has been explicitly set.
  var hasMessageSet: Bool {return _storage._messageSet != nil}
  /// Clears the value of `messageSet`. Subsequent reads from it will return its default value.
  mutating func clearMessageSet() {_storage._messageSet = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  public var isInitialized: Bool {
    return withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._messageSet, !v.isInitialized {return false}
      return true
    }
  }

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._messageSet)
        default: break
        }
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._messageSet {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass()
}

struct ProtobufUnittest_TestMessageSetExtension1: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".TestMessageSetExtension1"

  var i: Int32 {
    get {return _i ?? 0}
    set {_i = newValue}
  }
  /// Returns true if `i` has been explicitly set.
  var hasI: Bool {return self._i != nil}
  /// Clears the value of `i`. Subsequent reads from it will return its default value.
  mutating func clearI() {self._i = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 15: try decoder.decodeSingularInt32Field(value: &self._i)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._i {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 15)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _i: Int32? = nil
}

struct ProtobufUnittest_TestMessageSetExtension2: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".TestMessageSetExtension2"

  var str: String {
    get {return _str ?? String()}
    set {_str = newValue}
  }
  /// Returns true if `str` has been explicitly set.
  var hasStr: Bool {return self._str != nil}
  /// Clears the value of `str`. Subsequent reads from it will return its default value.
  mutating func clearStr() {self._str = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 25: try decoder.decodeSingularStringField(value: &self._str)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._str {
      try visitor.visitSingularStringField(value: v, fieldNumber: 25)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _str: String? = nil
}

/// MessageSet wire format is equivalent to this.
struct ProtobufUnittest_RawMessageSet: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".RawMessageSet"

  var item: [ProtobufUnittest_RawMessageSet.Item] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  struct Item: SwiftProtobuf.Message {
    static let protoMessageName: String = ProtobufUnittest_RawMessageSet.protoMessageName + ".Item"

    var typeID: Int32 {
      get {return _typeID ?? 0}
      set {_typeID = newValue}
    }
    /// Returns true if `typeID` has been explicitly set.
    var hasTypeID: Bool {return self._typeID != nil}
    /// Clears the value of `typeID`. Subsequent reads from it will return its default value.
    mutating func clearTypeID() {self._typeID = nil}

    var message: Data {
      get {return _message ?? SwiftProtobuf.Internal.emptyData}
      set {_message = newValue}
    }
    /// Returns true if `message` has been explicitly set.
    var hasMessage: Bool {return self._message != nil}
    /// Clears the value of `message`. Subsequent reads from it will return its default value.
    mutating func clearMessage() {self._message = nil}

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    public var isInitialized: Bool {
      if self._typeID == nil {return false}
      if self._message == nil {return false}
      return true
    }

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 2: try decoder.decodeSingularInt32Field(value: &self._typeID)
        case 3: try decoder.decodeSingularBytesField(value: &self._message)
        default: break
        }
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      if let v = self._typeID {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 2)
      }
      if let v = self._message {
        try visitor.visitSingularBytesField(value: v, fieldNumber: 3)
      }
      try unknownFields.traverse(visitor: &visitor)
    }

    fileprivate var _typeID: Int32? = nil
    fileprivate var _message: Data? = nil
  }

  init() {}

  public var isInitialized: Bool {
    if !SwiftProtobuf.Internal.areAllInitialized(self.item) {return false}
    return true
  }

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedGroupField(value: &self.item)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.item.isEmpty {
      try visitor.visitRepeatedGroupField(value: self.item, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Extension support defined in unittest_mset.proto.

extension Proto2WireformatUnittest_TestMessageSet {
  var ProtobufUnittest_TestMessageSetExtension1_messageSetExtension: ProtobufUnittest_TestMessageSetExtension1 {
    get {return getExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension1.Extensions.message_set_extension)}
    set {setExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension1.Extensions.message_set_extension, value: newValue)}
  }
  /// Returns true if extension `ProtobufUnittest_TestMessageSetExtension1.Extensions.message_set_extension`
  /// has been explicitly set.
  var hasProtobufUnittest_TestMessageSetExtension1_messageSetExtension: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension1.Extensions.message_set_extension)
  }
  /// Clears the value of extension `ProtobufUnittest_TestMessageSetExtension1.Extensions.message_set_extension`.
  /// Subsequent reads from it will return its default value.
  mutating func clearProtobufUnittest_TestMessageSetExtension1_messageSetExtension() {
    clearExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension1.Extensions.message_set_extension)
  }
}

extension Proto2WireformatUnittest_TestMessageSet {
  var ProtobufUnittest_TestMessageSetExtension2_messageSetExtension: ProtobufUnittest_TestMessageSetExtension2 {
    get {return getExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension2.Extensions.message_set_extension)}
    set {setExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension2.Extensions.message_set_extension, value: newValue)}
  }
  /// Returns true if extension `ProtobufUnittest_TestMessageSetExtension2.Extensions.message_set_extension`
  /// has been explicitly set.
  var hasProtobufUnittest_TestMessageSetExtension2_messageSetExtension: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension2.Extensions.message_set_extension)
  }
  /// Clears the value of extension `ProtobufUnittest_TestMessageSetExtension2.Extensions.message_set_extension`.
  /// Subsequent reads from it will return its default value.
  mutating func clearProtobufUnittest_TestMessageSetExtension2_messageSetExtension() {
    clearExtensionValue(ext: ProtobufUnittest_TestMessageSetExtension2.Extensions.message_set_extension)
  }
}

/// A `SwiftProtobuf.SimpleExtensionMap` that includes all of the extensions defined by
/// this .proto file. It can be used any place an `SwiftProtobuf.ExtensionMap` is needed
/// in parsing, or it can be combined with other `SwiftProtobuf.SimpleExtensionMap`s to create
/// a larger `SwiftProtobuf.SimpleExtensionMap`.
let ProtobufUnittest_UnittestMset_Extensions: SwiftProtobuf.SimpleExtensionMap = [
  ProtobufUnittest_TestMessageSetExtension1.Extensions.message_set_extension,
  ProtobufUnittest_TestMessageSetExtension2.Extensions.message_set_extension
]

extension ProtobufUnittest_TestMessageSetExtension1 {
  enum Extensions {
    static let message_set_extension = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalMessageExtensionField<ProtobufUnittest_TestMessageSetExtension1>, Proto2WireformatUnittest_TestMessageSet>(
      _protobuf_fieldNumber: 1545008,
      fieldName: "protobuf_unittest.TestMessageSetExtension1.message_set_extension",
      defaultValue: ProtobufUnittest_TestMessageSetExtension1()
    )
  }
}

extension ProtobufUnittest_TestMessageSetExtension2 {
  enum Extensions {
    static let message_set_extension = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalMessageExtensionField<ProtobufUnittest_TestMessageSetExtension2>, Proto2WireformatUnittest_TestMessageSet>(
      _protobuf_fieldNumber: 1547769,
      fieldName: "protobuf_unittest.TestMessageSetExtension2.message_set_extension",
      defaultValue: ProtobufUnittest_TestMessageSetExtension2()
    )
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "protobuf_unittest"

extension ProtobufUnittest_TestMessageSetContainer: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "message_set"),
  ]

  fileprivate class _StorageClass {
    var _messageSet: Proto2WireformatUnittest_TestMessageSet? = nil

    init() {}

    init(copying source: _StorageClass) {
      _messageSet = source._messageSet
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_TestMessageSetContainer) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._messageSet != other_storage._messageSet {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension ProtobufUnittest_TestMessageSetExtension1: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    15: .same(proto: "i"),
  ]

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_TestMessageSetExtension1) -> Bool {
    if self._i != other._i {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension ProtobufUnittest_TestMessageSetExtension2: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    25: .same(proto: "str"),
  ]

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_TestMessageSetExtension2) -> Bool {
    if self._str != other._str {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension ProtobufUnittest_RawMessageSet: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .unique(proto: "Item", json: "item"),
  ]

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_RawMessageSet) -> Bool {
    if self.item != other.item {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension ProtobufUnittest_RawMessageSet.Item: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .standard(proto: "type_id"),
    3: .same(proto: "message"),
  ]

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_RawMessageSet.Item) -> Bool {
    if self._typeID != other._typeID {return false}
    if self._message != other._message {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}