package sun.java2d.cmm;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class ProfileDeferralMgr
{
	/**
	* A class to manage the deferral of CMM initialization of profile
	* data for internal ICC_Profile objects - i.e. when we "trust" that
	* the profile data is valid and we think it may not be needed.  An
	* example is the sRGB profile which gets loaded by any program doing
	* graphics, but which may not be needed if the program does not need
	* high quality color conversion.
	*/
	@:public @:static public static var deferring : Bool;
	
	/**
	* Records a ProfileActivator object whose activate method will
	* be called if the CMM needs to be activated.
	*/
	@:overload @:public @:static public static function registerDeferral(pa : sun.java2d.cmm.ProfileActivator) : Void;
	
	/**
	* Removes a ProfileActivator object from the vector of ProfileActivator
	* objects whose activate method will be called if the CMM needs to be
	* activated.
	*/
	@:overload @:public @:static public static function unregisterDeferral(pa : sun.java2d.cmm.ProfileActivator) : Void;
	
	/**
	* Removes a ProfileActivator object from the vector of ProfileActivator
	* objects whose activate method will be called if the CMM needs to be
	* activated.
	*/
	@:overload @:public @:static public static function activateProfiles() : Void;
	
	
}
