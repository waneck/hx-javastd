package java.lang;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
/* We use APIs that access the standard Unix environ array, which
* is defined by UNIX98 to look like:
*
*    char **environ;
*
* These are unsorted, case-sensitive, null-terminated arrays of bytes
* of the form FOO=BAR\000 which are usually encoded in the user's
* default encoding (file.encoding is an excellent choice for
* encoding/decoding these).  However, even though the user cannot
* directly access the underlying byte representation, we take pains
* to pass on the child the exact byte representation we inherit from
* the parent process for any environment name or value not created by
* Javaland.  So we keep track of all the byte representations.
*
* Internally, we define the types Variable and Value that exhibit
* String/byteArray duality.  The internal representation of the
* environment then looks like a Map<Variable,Value>.  But we don't
* expose this to the user -- we only provide a Map<String,String>
* view, although we could also provide a Map<byte[],byte[]> view.
*
* The non-private methods in this class are not for general use even
* within this package.  Instead, they are the system-dependent parts
* of the system-independent method of the same name.  Don't even
* think of using this class unless your method's name appears below.
*
* @author  Martin Buchholz
* @since   1.5
*/
@:require(java5) @:internal extern class ProcessEnvironment
{
	
}
@:native('java$lang$ProcessEnvironment$ExternalData') @:internal extern class ProcessEnvironment_ExternalData
{
	@:protected @:final private var str(default, null) : String;
	
	@:protected @:final private var bytes(default, null) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:protected private function new(str : String, bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function getBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	
}
@:native('java$lang$ProcessEnvironment$Variable') @:internal extern class ProcessEnvironment_Variable extends java.lang.ProcessEnvironment.ProcessEnvironment_ExternalData implements java.lang.Comparable<java.lang.ProcessEnvironment.ProcessEnvironment_Variable>
{
	@:overload @:protected private function new(str : String, bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public @:static public static function valueOfQueryOnly(str : Dynamic) : java.lang.ProcessEnvironment.ProcessEnvironment_Variable;
	
	@:overload @:public @:static public static function valueOfQueryOnly(str : String) : java.lang.ProcessEnvironment.ProcessEnvironment_Variable;
	
	@:overload @:public @:static public static function valueOf(str : String) : java.lang.ProcessEnvironment.ProcessEnvironment_Variable;
	
	@:overload @:public @:static public static function valueOf(bytes : java.NativeArray<java.StdTypes.Int8>) : java.lang.ProcessEnvironment.ProcessEnvironment_Variable;
	
	@:overload @:public public function compareTo(variable : java.lang.ProcessEnvironment.ProcessEnvironment_Variable) : Int;
	
	@:overload @:public override public function equals(o : Dynamic) : Bool;
	
	
}
@:native('java$lang$ProcessEnvironment$Value') @:internal extern class ProcessEnvironment_Value extends java.lang.ProcessEnvironment.ProcessEnvironment_ExternalData implements java.lang.Comparable<java.lang.ProcessEnvironment.ProcessEnvironment_Value>
{
	@:overload @:protected private function new(str : String, bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public @:static public static function valueOfQueryOnly(str : Dynamic) : java.lang.ProcessEnvironment.ProcessEnvironment_Value;
	
	@:overload @:public @:static public static function valueOfQueryOnly(str : String) : java.lang.ProcessEnvironment.ProcessEnvironment_Value;
	
	@:overload @:public @:static public static function valueOf(str : String) : java.lang.ProcessEnvironment.ProcessEnvironment_Value;
	
	@:overload @:public @:static public static function valueOf(bytes : java.NativeArray<java.StdTypes.Int8>) : java.lang.ProcessEnvironment.ProcessEnvironment_Value;
	
	@:overload @:public public function compareTo(value : java.lang.ProcessEnvironment.ProcessEnvironment_Value) : Int;
	
	@:overload @:public override public function equals(o : Dynamic) : Bool;
	
	
}
@:native('java$lang$ProcessEnvironment$StringEnvironment') @:internal extern class ProcessEnvironment_StringEnvironment extends java.util.AbstractMap<String, String>
{
	@:overload @:public public function new(m : java.util.Map<java.lang.ProcessEnvironment.ProcessEnvironment_Variable, java.lang.ProcessEnvironment.ProcessEnvironment_Value>) : Void;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function isEmpty() : Bool;
	
	@:overload @:public override public function clear() : Void;
	
	@:overload @:public override public function containsKey(key : Dynamic) : Bool;
	
	@:overload @:public override public function containsValue(value : Dynamic) : Bool;
	
	@:overload @:public override public function get(key : Dynamic) : String;
	
	@:overload @:public public function put(key : String, value : String) : String;
	
	@:overload @:public override public function remove(key : Dynamic) : String;
	
	@:overload @:public override public function keySet() : java.util.Set<String>;
	
	@:overload @:public override public function entrySet() : java.util.Set<java.util.Map.Map_Entry<String, String>>;
	
	@:overload @:public override public function values() : java.util.Collection<String>;
	
	@:overload @:public public function toEnvironmentBlock(envc : java.NativeArray<Int>) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
@:native('java$lang$ProcessEnvironment$StringEntry') @:internal extern class ProcessEnvironment_StringEntry implements java.util.Map.Map_Entry<String, String>
{
	@:overload @:public public function new(e : java.util.Map.Map_Entry<java.lang.ProcessEnvironment.ProcessEnvironment_Variable, java.lang.ProcessEnvironment.ProcessEnvironment_Value>) : Void;
	
	@:overload @:public public function getKey() : String;
	
	@:overload @:public public function getValue() : String;
	
	@:overload @:public public function setValue(newValue : String) : String;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	
}
@:native('java$lang$ProcessEnvironment$StringEntrySet') @:internal extern class ProcessEnvironment_StringEntrySet extends java.util.AbstractSet<java.util.Map.Map_Entry<String, String>>
{
	@:overload @:public public function new(s : java.util.Set<java.util.Map.Map_Entry<java.lang.ProcessEnvironment.ProcessEnvironment_Variable, java.lang.ProcessEnvironment.ProcessEnvironment_Value>>) : Void;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function isEmpty() : Bool;
	
	@:overload @:public override public function clear() : Void;
	
	@:overload @:public override public function iterator() : java.util.Iterator<java.util.Map.Map_Entry<String, String>>;
	
	@:overload @:public override public function contains(o : Dynamic) : Bool;
	
	@:overload @:public override public function remove(o : Dynamic) : Bool;
	
	@:overload @:public override public function equals(o : Dynamic) : Bool;
	
	@:overload @:public override public function hashCode() : Int;
	
	
}
@:native('java$lang$ProcessEnvironment$StringValues') @:internal extern class ProcessEnvironment_StringValues extends java.util.AbstractCollection<String>
{
	@:overload @:public public function new(c : java.util.Collection<java.lang.ProcessEnvironment.ProcessEnvironment_Value>) : Void;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function isEmpty() : Bool;
	
	@:overload @:public override public function clear() : Void;
	
	@:overload @:public override public function iterator() : java.util.Iterator<String>;
	
	@:overload @:public override public function contains(o : Dynamic) : Bool;
	
	@:overload @:public override public function remove(o : Dynamic) : Bool;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	
}
@:native('java$lang$ProcessEnvironment$StringKeySet') @:internal extern class ProcessEnvironment_StringKeySet extends java.util.AbstractSet<String>
{
	@:overload @:public public function new(s : java.util.Set<java.lang.ProcessEnvironment.ProcessEnvironment_Variable>) : Void;
	
	@:overload @:public override public function size() : Int;
	
	@:overload @:public override public function isEmpty() : Bool;
	
	@:overload @:public override public function clear() : Void;
	
	@:overload @:public override public function iterator() : java.util.Iterator<String>;
	
	@:overload @:public override public function contains(o : Dynamic) : Bool;
	
	@:overload @:public override public function remove(o : Dynamic) : Bool;
	
	
}
