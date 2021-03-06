package sun.tools.jconsole.inspector;
/*
* Copyright (c) 2004, 2008, Oracle and/or its affiliates. All rights reserved.
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
//// java import
////
//// java import
////
/**
* This provides a wrapper to the Object class to allow it to be
displayed/manipulated as a GUI object.
*/
extern class XObject extends javax.swing.JLabel
{
	@:public @:final @:static public static var NULL_OBJECT(default, null) : sun.tools.jconsole.inspector.XObject;
	
	@:overload @:public public function new(object : Dynamic, icon : javax.swing.Icon) : Void;
	
	@:overload @:public public function new(object : Dynamic) : Void;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	@:overload @:public public function getObject() : Dynamic;
	
	@:overload @:public @:static public static function useHashCodeRepresentation(useHashCodeRepresentation : Bool) : Void;
	
	@:overload @:public @:static public static function hashCodeRepresentation() : Bool;
	
	@:overload @:public public function setObject(object : Dynamic) : Void;
	
	
}
