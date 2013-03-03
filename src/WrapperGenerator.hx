/*
* Copyright (c) 2003, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class WrapperGenerator
{
	@:overload @:public public function makeComment(str : String) : String;
	
	@:overload @:public public function getJavaTypeForSize(size : Int) : String;
	
	@:overload @:public public function getOffsets(stp : WrapperGenerator.WrapperGenerator_StructType, atp : WrapperGenerator.WrapperGenerator_AtomicType, wide : Bool) : String;
	
	@:overload @:public public function getStructSize(stp : WrapperGenerator.WrapperGenerator_StructType, wide : Bool) : String;
	
	@:overload @:public public function getLongSize(wide : Bool) : Int;
	
	@:overload @:public public function getPtrSize(wide : Bool) : Int;
	
	@:overload @:public public function getBoolSize(wide : Bool) : Int;
	
	@:overload @:public public function getOrdinalSize(ordinal : String, wide : Bool) : Int;
	
	@:overload @:public public function writeToString(stp : WrapperGenerator.WrapperGenerator_StructType, pw : java.io.PrintWriter) : Void;
	
	@:overload @:public public function writeStubs(stp : WrapperGenerator.WrapperGenerator_StructType, pw : java.io.PrintWriter) : Void;
	
	@:overload @:public public function writeAccessorImpls(stp : WrapperGenerator.WrapperGenerator_StructType, pw : java.io.PrintWriter) : Void;
	
	@:overload @:public public function writeWrapperSubclass(stp : WrapperGenerator.WrapperGenerator_StructType, pw : java.io.PrintWriter, wide : Bool) : Void;
	
	@:overload @:public public function writeWrapper(outputDir : String, stp : WrapperGenerator.WrapperGenerator_StructType) : Void;
	
	@:overload @:public public function writeFunctionCallWrapper(outputDir : String, ft : WrapperGenerator.WrapperGenerator_FunctionType) : Void;
	
	@:overload @:public public function writeJavaWrapperClass(outputDir : String) : Void;
	
	@:overload @:public public function writeNativeSizer(file : String) : Void;
	
	@:overload @:public public function new(outputDir : String, xlibFilename : String) : Void;
	
	@:overload @:public @:static public static function main(args : java.NativeArray<String>) : Void;
	
	
}
@:native('WrapperGenerator$BaseType') @:internal extern class WrapperGenerator_BaseType
{
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function getRealType() : String;
	
	@:overload @:public public function toString() : String;
	
	
}
@:native('WrapperGenerator$AtomicType') @:internal extern class WrapperGenerator_AtomicType extends WrapperGenerator.WrapperGenerator_BaseType
{
	@:overload @:public public function new(_type : Int, _name : String, _real_type : String) : Void;
	
	@:overload @:public public function isIn() : Bool;
	
	@:overload @:public public function isOut() : Bool;
	
	@:overload @:public public function isInOut() : Bool;
	
	@:overload @:public public function isAutoFree() : Bool;
	
	@:overload @:public public function setAttributes(attributes : java.NativeArray<String>) : Void;
	
	@:overload @:public public function getReferencedType() : WrapperGenerator.WrapperGenerator_BaseType;
	
	@:overload @:public public function getArrayLength() : Int;
	
	@:overload @:public public function setOffset(o : Int) : Void;
	
	@:overload @:public public function getType() : Int;
	
	@:overload @:public public function getTypeUpperCase() : String;
	
	@:overload @:public public function getOffset() : Int;
	
	@:overload @:public public function isAlias() : Bool;
	
	@:overload @:public public function getAliasName() : String;
	
	
}
@:native('WrapperGenerator$StructType') @:internal extern class WrapperGenerator_StructType extends WrapperGenerator.WrapperGenerator_BaseType
{
	/**
	* Construct new structured type.
	* Description is used for name and type definition and has the following format:
	* structName [ '[' base classe ']' ] [ '{' interfaces '}' ] [ '|' javaClassName ]
	*/
	@:overload @:public public function new(_desc : String) : Void;
	
	@:overload @:public public function getNumFields() : Int;
	
	@:overload @:public public function setName(_name : String) : Void;
	
	@:overload @:public public function setSize(i : Int) : Void;
	
	@:overload @:public public function getDescription() : String;
	
	@:overload @:public public function getMembers() : java.util.Enumeration<Dynamic>;
	
	@:overload @:public public function addMember(tp : WrapperGenerator.WrapperGenerator_BaseType) : Void;
	
	@:overload @:public public function getBaseClass() : String;
	
	@:overload @:public public function getInterfaces() : String;
	
	@:overload @:public public function getIsInterface() : Bool;
	
	@:overload @:public public function getJavaClassName() : String;
	
	/**
	* Returns String containing Java code calculating size of the structure depending on the data model
	*/
	@:overload @:public public function getSize() : String;
	
	@:overload @:public public function getOffset(atp : WrapperGenerator.WrapperGenerator_AtomicType) : String;
	
	
}
@:native('WrapperGenerator$FunctionType') @:internal extern class WrapperGenerator_FunctionType extends WrapperGenerator.WrapperGenerator_BaseType
{
	@:overload @:public public function new(_desc : String) : Void;
	
	@:overload @:public public function getNumArgs() : Int;
	
	@:overload @:public public function setName(_name : String) : Void;
	
	@:overload @:public public function getDescription() : String;
	
	@:overload @:public public function getArguments() : java.util.Collection<Dynamic>;
	
	@:overload @:public public function addArgument(tp : WrapperGenerator.WrapperGenerator_BaseType) : Void;
	
	
}
