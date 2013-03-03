package java.util.prefs;
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
/**
* XML Support for java.util.prefs. Methods to import and export preference
* nodes and subtrees.
*
* @author  Josh Bloch and Mark Reinhold
* @see     Preferences
* @since   1.4
*/
@:require(java4) @:internal extern class XmlSupport
{
	
}
@:native('java$util$prefs$XmlSupport$Resolver') @:internal extern class XmlSupport_Resolver implements org.xml.sax.EntityResolver
{
	@:overload @:public public function resolveEntity(pid : String, sid : String) : org.xml.sax.InputSource;
	
	
}
@:native('java$util$prefs$XmlSupport$EH') @:internal extern class XmlSupport_EH implements org.xml.sax.ErrorHandler
{
	@:overload @:public public function error(x : org.xml.sax.SAXParseException) : Void;
	
	@:overload @:public public function fatalError(x : org.xml.sax.SAXParseException) : Void;
	
	@:overload @:public public function warning(x : org.xml.sax.SAXParseException) : Void;
	
	
}
