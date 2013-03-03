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
extern class ProfileDeferralInfo extends java.io.InputStream
{
	/**
	* A class to pass information about a profile to be loaded from
	* a file to the static getInstance(InputStream) method of
	* ICC_Profile.  Loading of the profile data and initialization
	* of the CMM is to be deferred as long as possible.
	*/
	@:public public var colorSpaceType : Int;
	
	@:public public var numComponents : Int;
	
	@:public public var profileClass : Int;
	
	@:public public var filename : String;
	
	@:overload @:public public function new(fn : String, type : Int, ncomp : Int, pclass : Int) : Void;
	
	/**
	* Implements the abstract read() method of InputStream.
	*/
	@:overload @:public override public function read() : Int;
	
	
}
