//
//  Log.swift
//  SlackRackSwift
//
//  Created by 五十嵐翔 on 2015/07/29.
//  Copyright © 2015年 五十嵐翔. All rights reserved.
//

import Swift

private enum LogLevel {
    case Verbase
    case Debug
    case Info
    case Warn
    case Error

    func toString() -> String {
        switch self {
        case .Verbase:  return "V";
        case .Debug:    return "D";
        case .Info:     return "I";
        case .Warn:     return "W";
        case .Error:    return "E";
        }
    }

    func isEnable() -> Bool {
        switch self {
        case .Verbase:  return true;
        case .Debug:    return true;
        case .Info:     return true;
        case .Warn:     return true;
        case .Error:    return true;
        }
    }
}

/**
 * Log Class
 */
class Log {

    /**
    Verbase

    :param: message ログメッセージ
    */
    class func v(message: String, file: String = __FILE__, function: String = __FUNCTION__, line: Int = __LINE__) {
        Log.println(LogLevel.Verbase, message: message, file: file, function: function, line: line);
    }

    /**
    Debug

    :param: message ログメッセージ
    */
    class func d(message: String, file: String = __FILE__, function: String = __FUNCTION__, line: Int = __LINE__) {
        Log.println(LogLevel.Debug, message: message, file: file, function: function, line: line);
    }

    /**
    Info

    :param: message ログメッセージ
    */
    class func i(message: String, file: String = __FILE__, function: String = __FUNCTION__, line: Int = __LINE__) {
        Log.println(LogLevel.Info, message: message, file: file, function: function, line: line);
    }

    /**
    Warn

    :param: message ログメッセージ
    */
    class func w(message: String, file: String = __FILE__, function: String = __FUNCTION__, line: Int = __LINE__) {
        Log.println(LogLevel.Warn, message: message, file: file, function: function, line: line);
    }

    /**
    Error

    :param: message ログメッセージ
    */
    class func e(message: String, file: String = __FILE__, function: String = __FUNCTION__, line: Int = __LINE__) {
        Log.println(LogLevel.Error, message: message, file: file, function: function, line: line);
    }

    /**
    println
    */
    private class func println(level: LogLevel, message: String, file: String, function: String, line: Int) {
        if (!level.isEnable()) {
            return;
        }
        print("[\(level.toString())][\(file)(L.\(line)) \(function)]: \(message)");
    }
}
