// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class LaunchPastQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query LaunchPast {
      launchesPast {
        __typename
        mission_name
        launch_date_local
        launch_site {
          __typename
          site_name_long
        }
        links {
          __typename
          article_link
          video_link
        }
        rocket {
          __typename
          rocket_name
          first_stage {
            __typename
            cores {
              __typename
              flight
            }
          }
          second_stage {
            __typename
            payloads {
              __typename
              payload_type
            }
          }
        }
        ships {
          __typename
          name
          home_port
          image
        }
      }
    }
    """

  public let operationName: String = "LaunchPast"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("launchesPast", type: .list(.object(LaunchesPast.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(launchesPast: [LaunchesPast?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "launchesPast": launchesPast.flatMap { (value: [LaunchesPast?]) -> [ResultMap?] in value.map { (value: LaunchesPast?) -> ResultMap? in value.flatMap { (value: LaunchesPast) -> ResultMap in value.resultMap } } }])
    }

    public var launchesPast: [LaunchesPast?]? {
      get {
        return (resultMap["launchesPast"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [LaunchesPast?] in value.map { (value: ResultMap?) -> LaunchesPast? in value.flatMap { (value: ResultMap) -> LaunchesPast in LaunchesPast(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [LaunchesPast?]) -> [ResultMap?] in value.map { (value: LaunchesPast?) -> ResultMap? in value.flatMap { (value: LaunchesPast) -> ResultMap in value.resultMap } } }, forKey: "launchesPast")
      }
    }

    public struct LaunchesPast: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Launch"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("mission_name", type: .scalar(String.self)),
          GraphQLField("launch_date_local", type: .scalar(String.self)),
          GraphQLField("launch_site", type: .object(LaunchSite.selections)),
          GraphQLField("links", type: .object(Link.selections)),
          GraphQLField("rocket", type: .object(Rocket.selections)),
          GraphQLField("ships", type: .list(.object(Ship.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(missionName: String? = nil, launchDateLocal: String? = nil, launchSite: LaunchSite? = nil, links: Link? = nil, rocket: Rocket? = nil, ships: [Ship?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Launch", "mission_name": missionName, "launch_date_local": launchDateLocal, "launch_site": launchSite.flatMap { (value: LaunchSite) -> ResultMap in value.resultMap }, "links": links.flatMap { (value: Link) -> ResultMap in value.resultMap }, "rocket": rocket.flatMap { (value: Rocket) -> ResultMap in value.resultMap }, "ships": ships.flatMap { (value: [Ship?]) -> [ResultMap?] in value.map { (value: Ship?) -> ResultMap? in value.flatMap { (value: Ship) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var missionName: String? {
        get {
          return resultMap["mission_name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "mission_name")
        }
      }

      public var launchDateLocal: String? {
        get {
          return resultMap["launch_date_local"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "launch_date_local")
        }
      }

      public var launchSite: LaunchSite? {
        get {
          return (resultMap["launch_site"] as? ResultMap).flatMap { LaunchSite(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "launch_site")
        }
      }

      public var links: Link? {
        get {
          return (resultMap["links"] as? ResultMap).flatMap { Link(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "links")
        }
      }

      public var rocket: Rocket? {
        get {
          return (resultMap["rocket"] as? ResultMap).flatMap { Rocket(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "rocket")
        }
      }

      public var ships: [Ship?]? {
        get {
          return (resultMap["ships"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Ship?] in value.map { (value: ResultMap?) -> Ship? in value.flatMap { (value: ResultMap) -> Ship in Ship(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Ship?]) -> [ResultMap?] in value.map { (value: Ship?) -> ResultMap? in value.flatMap { (value: Ship) -> ResultMap in value.resultMap } } }, forKey: "ships")
        }
      }

      public struct LaunchSite: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["LaunchSite"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("site_name_long", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(siteNameLong: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "LaunchSite", "site_name_long": siteNameLong])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var siteNameLong: String? {
          get {
            return resultMap["site_name_long"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "site_name_long")
          }
        }
      }

      public struct Link: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["LaunchLinks"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("article_link", type: .scalar(String.self)),
            GraphQLField("video_link", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(articleLink: String? = nil, videoLink: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "LaunchLinks", "article_link": articleLink, "video_link": videoLink])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var articleLink: String? {
          get {
            return resultMap["article_link"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "article_link")
          }
        }

        public var videoLink: String? {
          get {
            return resultMap["video_link"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "video_link")
          }
        }
      }

      public struct Rocket: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["LaunchRocket"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("rocket_name", type: .scalar(String.self)),
            GraphQLField("first_stage", type: .object(FirstStage.selections)),
            GraphQLField("second_stage", type: .object(SecondStage.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(rocketName: String? = nil, firstStage: FirstStage? = nil, secondStage: SecondStage? = nil) {
          self.init(unsafeResultMap: ["__typename": "LaunchRocket", "rocket_name": rocketName, "first_stage": firstStage.flatMap { (value: FirstStage) -> ResultMap in value.resultMap }, "second_stage": secondStage.flatMap { (value: SecondStage) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var rocketName: String? {
          get {
            return resultMap["rocket_name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "rocket_name")
          }
        }

        public var firstStage: FirstStage? {
          get {
            return (resultMap["first_stage"] as? ResultMap).flatMap { FirstStage(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "first_stage")
          }
        }

        public var secondStage: SecondStage? {
          get {
            return (resultMap["second_stage"] as? ResultMap).flatMap { SecondStage(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "second_stage")
          }
        }

        public struct FirstStage: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["LaunchRocketFirstStage"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("cores", type: .list(.object(Core.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(cores: [Core?]? = nil) {
            self.init(unsafeResultMap: ["__typename": "LaunchRocketFirstStage", "cores": cores.flatMap { (value: [Core?]) -> [ResultMap?] in value.map { (value: Core?) -> ResultMap? in value.flatMap { (value: Core) -> ResultMap in value.resultMap } } }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var cores: [Core?]? {
            get {
              return (resultMap["cores"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Core?] in value.map { (value: ResultMap?) -> Core? in value.flatMap { (value: ResultMap) -> Core in Core(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [Core?]) -> [ResultMap?] in value.map { (value: Core?) -> ResultMap? in value.flatMap { (value: Core) -> ResultMap in value.resultMap } } }, forKey: "cores")
            }
          }

          public struct Core: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["LaunchRocketFirstStageCore"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("flight", type: .scalar(Int.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(flight: Int? = nil) {
              self.init(unsafeResultMap: ["__typename": "LaunchRocketFirstStageCore", "flight": flight])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var flight: Int? {
              get {
                return resultMap["flight"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "flight")
              }
            }
          }
        }

        public struct SecondStage: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["LaunchRocketSecondStage"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("payloads", type: .list(.object(Payload.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(payloads: [Payload?]? = nil) {
            self.init(unsafeResultMap: ["__typename": "LaunchRocketSecondStage", "payloads": payloads.flatMap { (value: [Payload?]) -> [ResultMap?] in value.map { (value: Payload?) -> ResultMap? in value.flatMap { (value: Payload) -> ResultMap in value.resultMap } } }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var payloads: [Payload?]? {
            get {
              return (resultMap["payloads"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Payload?] in value.map { (value: ResultMap?) -> Payload? in value.flatMap { (value: ResultMap) -> Payload in Payload(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [Payload?]) -> [ResultMap?] in value.map { (value: Payload?) -> ResultMap? in value.flatMap { (value: Payload) -> ResultMap in value.resultMap } } }, forKey: "payloads")
            }
          }

          public struct Payload: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Payload"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("payload_type", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(payloadType: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "Payload", "payload_type": payloadType])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var payloadType: String? {
              get {
                return resultMap["payload_type"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "payload_type")
              }
            }
          }
        }
      }

      public struct Ship: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Ship"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("home_port", type: .scalar(String.self)),
            GraphQLField("image", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil, homePort: String? = nil, image: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Ship", "name": name, "home_port": homePort, "image": image])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var homePort: String? {
          get {
            return resultMap["home_port"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "home_port")
          }
        }

        public var image: String? {
          get {
            return resultMap["image"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "image")
          }
        }
      }
    }
  }
}
