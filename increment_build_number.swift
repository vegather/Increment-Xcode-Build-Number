import Foundation

func incrementBuildNumber() {
	let currentPath = FileManager.default.currentDirectoryPath
	guard let projectName = currentPath.components(separatedBy: "/").last else { return }

	let infoPlistPath = currentPath + "/" + projectName + "/info.plist"
	guard var infoPlist = NSDictionary(contentsOfFile: infoPlistPath) as? [String: Any] else { return }

	let buildNumber = Int(infoPlist["CFBundleVersion"] as? String ?? "") ?? 0
	infoPlist["CFBundleVersion"] = String(buildNumber + 1)
    
	(infoPlist as NSDictionary).write(toFile: infoPlistPath, atomically: true)
}

incrementBuildNumber()
