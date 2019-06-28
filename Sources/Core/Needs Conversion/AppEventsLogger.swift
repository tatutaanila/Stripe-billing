// Copyright (c) 2014-present, Facebook, Inc. All rights reserved.
//
// You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
// copy, modify, and distribute this software in source code or binary form for use
// in connection with the web services and APIs provided by Facebook.
//
// As with any software that integrates with the Facebook platform, your use of
// this software is subject to the Facebook Developer Principles and Policies
// [http://developers.facebook.com/policy/]. This copyright notice shall be
// included in all copies or substantial portions of the software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
// FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
// COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
// IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
// CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

import Foundation

// TODO: A more robust type for app event names
typealias AppEventName = String

protocol AppEventsLogging {
  func activateApp()

  func logInternalEvent(
    eventName: AppEventName,
    parameters: [String: AnyHashable],
    isImplicitlyLogged: Bool
  )

  func registerNotifications()
}

// TODO: Convert FBSDKAppEvent
class AppEventsLogger: AppEventsLogging {
  static let shared = AppEventsLogger()

  func activateApp() {
    print("Implement app activation")
  }

  func logInternalEvent(
    eventName: AppEventName,
    parameters: [String: AnyHashable],
    isImplicitlyLogged: Bool
    ) {
    print("Implement app events logging")
  }

  func registerNotifications() {
    print("Implement register notifications")
  }
}
