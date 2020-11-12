//
// RosterCacheProvider.swift
//
// TigaseSwift
// Copyright (C) 2016 "Tigase, Inc." <office@tigase.com>
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License,
// or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program. Look for COPYING file in the top folder.
// If not, see http://www.gnu.org/licenses/.
//

import Foundation

/**
 Protocol for classes which are going to provide caching feature for
 XMPP roster.
 */
public protocol RosterCacheProvider {
    /**
     Retrieve cached version
     - parameter sessionObject: instance of `SessionObject`
     - returns: cached version
     */
    func getCachedVersion(_ context: Context) -> String?;
    
    /**
     Load cached roster items
     - parameter sessionObject: instance of `SessionObject`
     - returns: array of loaded `RosterItem`s
     */
    func loadCachedRoster(_ context: Context) -> [RosterItem];
    
    /**
     Update cached version
     - parameter sessionObject: instance of `SessionObject`
     - paremeter ver: cached version
     */
    func updateReceivedVersion(_ context: Context, ver:String?);
    
}
