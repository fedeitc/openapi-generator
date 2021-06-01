//
// AdditionalPropertiesString.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AdditionalPropertiesString: Codable, Hashable {

    public var name: String?

    public init(name: String? = nil) {
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
    }

    public var additionalProperties: [String: String] = [:]

    public subscript(key: String) -> String? {
        get {
            if let value = additionalProperties[key] {
                return value
            }
            return nil
        }

        set {
            additionalProperties[key] = newValue
        }
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        var additionalPropertiesContainer = encoder.container(keyedBy: String.self)
        try additionalPropertiesContainer.encodeMap(additionalProperties)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        name = try container.decodeIfPresent(String.self, forKey: .name)
        var nonAdditionalPropertyKeys = Set<String>()
        nonAdditionalPropertyKeys.insert("name")
        let additionalPropertiesContainer = try decoder.container(keyedBy: String.self)
        additionalProperties = try additionalPropertiesContainer.decodeMap(String.self, excludedKeys: nonAdditionalPropertyKeys)
    }
}
