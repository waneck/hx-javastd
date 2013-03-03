package sun.invoke.anon;
/*
* Copyright (c) 2008, 2011, Oracle and/or its affiliates. All rights reserved.
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
/** A constant pool parser.
*/
extern class ConstantPoolParser
{
	/** Creates a constant pool parser.
	* @param classFile an array of bytes containing a class.
	* @throws InvalidConstantPoolFormatException if the header of the class has errors.
	*/
	@:overload @:public public function new(classFile : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/** Create a constant pool parser by loading the bytecodes of the
	*  class taken as argument.
	*
	* @param templateClass the class to parse.
	*
	* @throws IOException raised if an I/O occurs when loading
	*  the bytecode of the template class.
	* @throws InvalidConstantPoolFormatException if the header of the class has errors.
	*
	* @see #ConstantPoolParser(byte[])
	* @see AnonymousClassLoader#readClassFile(Class)
	*/
	@:overload @:public public function new(templateClass : Class<Dynamic>) : Void;
	
	/** Creates an empty patch to patch the class file
	*  used by the current parser.
	* @return a new class patch.
	*/
	@:overload @:public public function createPatch() : sun.invoke.anon.ConstantPoolPatch;
	
	/** Report the tag of the indicated CP entry.
	* @param index
	* @return one of {@link ConstantPoolVisitor#CONSTANT_Utf8}, etc.
	*/
	@:overload @:public public function getTag(index : Int) : java.StdTypes.Int8;
	
	/** Report the length of the constant pool. */
	@:overload @:public public function getLength() : Int;
	
	/** Report the offset, within the class file, of the start of the constant pool. */
	@:overload @:public public function getStartOffset() : Int;
	
	/** Report the offset, within the class file, of the end of the constant pool. */
	@:overload @:public public function getEndOffset() : Int;
	
	/** Report the CP index of this class's own name. */
	@:overload @:public public function getThisClassIndex() : Int;
	
	/** Report the total size of the class file. */
	@:overload @:public public function getTailLength() : Int;
	
	/** Write the head (header plus constant pool)
	*  of the class file to the indicated stream.
	*/
	@:overload @:public public function writeHead(out : java.io.OutputStream) : Void;
	
	/** Write the tail (everything after the constant pool)
	*  of the class file to the indicated stream.
	*/
	@:overload @:public public function writeTail(out : java.io.OutputStream) : Void;
	
	/** Parse the constant pool of the class
	*  calling a method visit* each time a constant pool entry is parsed.
	*
	*  The order of the calls to visit* is not guaranteed to be the same
	*  than the order of the constant pool entry in the bytecode array.
	*
	* @param visitor
	* @throws InvalidConstantPoolFormatException
	*/
	@:overload @:public public function parse(visitor : sun.invoke.anon.ConstantPoolVisitor) : Void;
	
	
}
