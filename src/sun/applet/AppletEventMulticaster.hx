package sun.applet;
/*
* Copyright (c) 1997, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
extern class AppletEventMulticaster implements sun.applet.AppletListener
{
	@:overload public function new(a : sun.applet.AppletListener, b : sun.applet.AppletListener) : Void;
	
	@:overload public function appletStateChanged(e : sun.applet.AppletEvent) : Void;
	
	/**
	* Adds Applet-listener-a with Applet-listener-b and
	* returns the resulting multicast listener.
	* @param a Applet-listener-a
	* @param b Applet-listener-b
	*/
	@:overload public static function add(a : sun.applet.AppletListener, b : sun.applet.AppletListener) : sun.applet.AppletListener;
	
	/**
	* Removes the old Applet-listener from Applet-listener-l and
	* returns the resulting multicast listener.
	* @param l Applet-listener-l
	* @param oldl the Applet-listener being removed
	*/
	@:native('remove') @:overload public static function _remove(l : sun.applet.AppletListener, oldl : sun.applet.AppletListener) : sun.applet.AppletListener;
	
	/**
	* Removes a listener from this multicaster and returns the
	* resulting multicast listener.
	* @param oldl the listener to be removed
	*/
	@:overload private function remove(oldl : sun.applet.AppletListener) : sun.applet.AppletListener;
	
	
}
