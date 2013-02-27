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
	@:overload public function makeComment(str : String) : String;
	
	@:overload public function getJavaTypeForSize(size : Int) : String;
	
	@:overload public function getOffsets(stp : WrapperGenerator_StructType, atp : WrapperGenerator_AtomicType, wide : Bool) : String;
	
	@:overload public function getStructSize(stp : WrapperGenerator_StructType, wide : Bool) : String;
	
	@:overload public function getLongSize(wide : Bool) : Int;
	
	@:overload public function getPtrSize(wide : Bool) : Int;
	
	@:overload public function getBoolSize(wide : Bool) : Int;
	
	@:overload public function getOrdinalSize(ordinal : String, wide : Bool) : Int;
	
	@:overload public function writeToString(stp : WrapperGenerator_StructType, pw : java.io.PrintWriter) : Void;
	
	@:overload public function writeStubs(stp : WrapperGenerator_StructType, pw : java.io.PrintWriter) : Void;
	
	@:overload public function writeAccessorImpls(stp : WrapperGenerator_StructType, pw : java.io.PrintWriter) : Void;
	
	@:overload public function writeWrapperSubclass(stp : WrapperGenerator_StructType, pw : java.io.PrintWriter, wide : Bool) : Void;
	
	@:overload public function writeWrapper(outputDir : String, stp : WrapperGenerator_StructType) : Void;
	
	@:overload public function writeFunctionCallWrapper(outputDir : String, ft : WrapperGenerator_FunctionType) : Void;
	
	@:overload public function writeJavaWrapperClass(outputDir : String) : Void;
	
	@:overload public function writeNativeSizer(file : String) : Void;
	
	@:overload public function new(outputDir : String, xlibFilename : String) : Void;
	
	@:overload public static function main(args : java.NativeArray<String>) : Void;
	
	
}
@:native('WrapperGenerator$BaseType') @:internal extern class WrapperGenerator_BaseType
{
	@:overload public function getName() : String;
	
	@:overload public function getRealType() : String;
	
	@:overload public function toString() : String;
	
	
}
@:native('WrapperGenerator$AtomicType') @:internal extern class WrapperGenerator_AtomicType extends WrapperGenerator_BaseType
{
	@:overload public function new(_type : Int, _name : String, _real_type : String) : Void;
	
	@:overload public function isIn() : Bool;
	
	@:overload public function isOut() : Bool;
	
	@:overload public function isInOut() : Bool;
	
	@:overload public function isAutoFree() : Bool;
	
	@:overload public function setAttributes(attributes : java.NativeArray<String>) : Void;
	
	@:overload public function getReferencedType() : WrapperGenerator_BaseType;
	
	@:overload public function getArrayLength() : Int;
	
	@:overload public function setOffset(o : Int) : Void;
	
	@:overload public function getType() : Int;
	
	@:overload public function getTypeUpperCase() : String;
	
	@:overload public function getOffset() : Int;
	
	@:overload public function isAlias() : Bool;
	
	@:overload public function getAliasName() : String;
	
	
}
@:native('WrapperGenerator$StructType') @:internal extern class WrapperGenerator_StructType extends WrapperGenerator_BaseType
{
	/**
	* Construct new structured type.
	* Description is used for name and type definition and has the following format:
	* structName [ '[' base classe ']' ] [ '{' interfaces '}' ] [ '|' javaClassName ]
	*/
	@:overload public function new(_desc : String) : Void;
	
	@:overload public function getNumFields() : Int;
	
	@:overload public function setName(_name : String) : Void;
	
	@:overload public function setSize(i : Int) : Void;
	
	@:overload public function getDescription() : String;
	
	@:overload public function getMembers() : java.util.Enumeration<Dynamic>;
	
	@:overload public function addMember(tp : WrapperGenerator_BaseType) : Void;
	
	@:overload public function getBaseClass() : String;
	
	@:overload public function getInterfaces() : String;
	
	@:overload public function getIsInterface() : Bool;
	
	@:overload public function getJavaClassName() : String;
	
	/**
	* Returns String containing Java code calculating size of the structure depending on the data model
	*/
	@:overload public function getSize() : String;
	
	@:overload public function getOffset(atp : WrapperGenerator_AtomicType) : String;
	
	
}
@:native('WrapperGenerator$FunctionType') @:internal extern class WrapperGenerator_FunctionType extends WrapperGenerator_BaseType
{
	@:overload public function new(_desc : String) : Void;
	
	@:overload public function getNumArgs() : Int;
	
	@:overload public function setName(_name : String) : Void;
	
	@:overload public function getDescription() : String;
	
	@:overload public function getArguments() : java.util.Collection<Dynamic>;
	
	@:overload public function addArgument(tp : WrapperGenerator_BaseType) : Void;
	
	
}
