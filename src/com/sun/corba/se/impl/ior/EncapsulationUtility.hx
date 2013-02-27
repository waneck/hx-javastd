package com.sun.corba.se.impl.ior;
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
extern class EncapsulationUtility
{
	/** Read the count from is, then read count Identifiables from
	* is using the factory.  Add each constructed Identifiable to container.
	*/
	@:overload public static function readIdentifiableSequence(container : java.util.List<Dynamic>, finder : com.sun.corba.se.spi.ior.IdentifiableFactoryFinder, istr : org.omg.CORBA_2_3.portable.InputStream) : Void;
	
	/** Write all Identifiables that we contain to os.  The total
	* length must be written before this method is called.
	*/
	@:overload public static function writeIdentifiableSequence(container : java.util.List<Dynamic>, os : org.omg.CORBA_2_3.portable.OutputStream) : Void;
	
	/** Helper method that is used to extract data from an output
	* stream and write the data to another output stream.  Defined
	* as static so that it can be used in another class.
	*/
	@:overload public static function writeOutputStream(dataStream : org.omg.CORBA_2_3.portable.OutputStream, os : org.omg.CORBA_2_3.portable.OutputStream) : Void;
	
	/** Helper method to read the octet array from is, deencapsulate it,
	* and return
	* as another InputStream.  This must be called inside the
	* constructor of a derived class to obtain the correct stream
	* for unmarshalling data.
	*/
	@:overload public static function getEncapsulationStream(is : org.omg.CORBA_2_3.portable.InputStream) : org.omg.CORBA_2_3.portable.InputStream;
	
	/** Helper method that reads an octet array from an input stream.
	* Defined as static here so that it can be used in another class.
	*/
	@:overload public static function readOctets(is : org.omg.CORBA_2_3.portable.InputStream) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public static function writeEncapsulation(obj : com.sun.corba.se.spi.ior.WriteContents, os : org.omg.CORBA_2_3.portable.OutputStream) : Void;
	
	
}
