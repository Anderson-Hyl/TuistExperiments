import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.framework(
  name: "AppFeature",
  reverseDomain: "com.yourcompany",
  tca: true,
  dependencies: [
    .project(target: "TodosFeature", path: .relativeToRoot("TodosFeature")),
  ]
)
