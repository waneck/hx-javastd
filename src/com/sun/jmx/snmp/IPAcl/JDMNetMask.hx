package com.sun.jmx.snmp.IPAcl;
/*
* Copyright (c) 2002, 2006, Oracle and/or its affiliates. All rights reserved.
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
/* Generated By:JJTree: Do not edit this line. JDMNetMask.java */
@:internal extern class JDMNetMask extends com.sun.jmx.snmp.IPAcl.Host.Host
{
	private var address : java.lang.StringBuffer.StringBuffer;
	
	private var mask : java.lang.String.String;
	
	@:overload public function new(id : Int) : Void;
	
	@:overload public function new(p : com.sun.jmx.snmp.IPAcl.Parser.Parser, id : Int) : Void;
	
	@:native('jjtCreate') @:overload public static function _jjtCreate(id : Int) : com.sun.jmx.snmp.IPAcl.Node.Node;
	
	@:native('jjtCreate') @:overload public static function _jjtCreate(p : com.sun.jmx.snmp.IPAcl.Parser.Parser, id : Int) : com.sun.jmx.snmp.IPAcl.Node.Node;
	
	@:overload override private function getHname() : java.lang.String.String;
	
	@:overload override private function createAssociatedPrincipal() : com.sun.jmx.snmp.IPAcl.PrincipalImpl.PrincipalImpl;
	
	
}
