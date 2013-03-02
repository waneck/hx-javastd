package com.sun.corba.se.spi.ior;
/*
* Copyright (c) 2002, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern interface IOR extends java.util.List<Dynamic> extends com.sun.corba.se.spi.ior.Writeable extends com.sun.corba.se.spi.ior.MakeImmutable
{
	/** An IOR is represented as a list of profiles.
* Only instances of TaggedProfile are contained in the list.
*/
	@:overload public function getORB() : com.sun.corba.se.spi.orb.ORB;
	
	/** Return the type id string from the IOR.
	*/
	@:overload public function getTypeId() : String;
	
	/** Return an iterator that iterates over tagged profiles with
	* identifier id.  It is not possible to modify the list through this
	* iterator.
	*/
	@:overload public function iteratorById(id : Int) : java.util.Iterator<Dynamic>;
	
	/** Return a representation of this IOR in the standard GIOP stringified
	* format that begins with "IOR:".
	*/
	@:overload public function stringify() : String;
	
	/** Return a representation of this IOR in the standard GIOP marshalled
	* form.
	*/
	@:overload public function getIOPIOR() : org.omg.IOP.IOR;
	
	/** Return true if this IOR has no profiles.
	*/
	@:overload public function isNil() : Bool;
	
	/** Return true if this IOR is equivalent to ior.  Here equivalent means
	* that the typeids are the same, they have the same number of profiles,
	* and each profile is equivalent to the corresponding profile.
	*/
	@:overload public function isEquivalent(ior : com.sun.corba.se.spi.ior.IOR) : Bool;
	
	/** Return the IORTemplate for this IOR.  This is simply a list
	* of all TaggedProfileTemplates derived from the TaggedProfiles
	* of the IOR.
	*/
	@:overload public function getIORTemplates() : com.sun.corba.se.spi.ior.IORTemplateList;
	
	/** Return the first IIOPProfile in this IOR.
	* XXX THIS IS TEMPORARY FOR BACKWARDS COMPATIBILITY AND WILL BE REMOVED
	* SOON!
	*/
	@:overload public function getProfile() : com.sun.corba.se.spi.ior.iiop.IIOPProfile;
	
	
}
