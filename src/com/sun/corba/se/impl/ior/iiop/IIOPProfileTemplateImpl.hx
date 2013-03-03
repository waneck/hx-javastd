package com.sun.corba.se.impl.ior.iiop;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class IIOPProfileTemplateImpl extends com.sun.corba.se.spi.ior.TaggedProfileTemplateBase implements com.sun.corba.se.spi.ior.iiop.IIOPProfileTemplate
{
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public override public function hashCode() : Int;
	
	@:overload @:public override public function create(oktemp : com.sun.corba.se.spi.ior.ObjectKeyTemplate, id : com.sun.corba.se.spi.ior.ObjectId) : com.sun.corba.se.spi.ior.TaggedProfile;
	
	@:overload @:public public function getGIOPVersion() : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	@:overload @:public public function getPrimaryAddress() : com.sun.corba.se.spi.ior.iiop.IIOPAddress;
	
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB, version : com.sun.corba.se.spi.ior.iiop.GIOPVersion, primary : com.sun.corba.se.spi.ior.iiop.IIOPAddress) : Void;
	
	@:overload @:public public function new(istr : org.omg.CORBA_2_3.portable.InputStream) : Void;
	
	@:overload @:public override public function write(okeyTemplate : com.sun.corba.se.spi.ior.ObjectKeyTemplate, id : com.sun.corba.se.spi.ior.ObjectId, os : org.omg.CORBA_2_3.portable.OutputStream) : Void;
	
	/** Write out this IIOPProfileTemplateImpl only.
	*/
	@:overload @:public override public function writeContents(os : org.omg.CORBA_2_3.portable.OutputStream) : Void;
	
	@:overload @:public override public function getId() : Int;
	
	@:overload @:public override public function isEquivalent(temp : com.sun.corba.se.spi.ior.TaggedProfileTemplate) : Bool;
	
	
}
