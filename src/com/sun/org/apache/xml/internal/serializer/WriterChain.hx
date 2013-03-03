package com.sun.org.apache.xml.internal.serializer;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: WriterChain.java,v 1.1.4.1 2005/09/08 10:58:44 suresh_emailid Exp $
*/
@:internal extern interface WriterChain
{
	/** This method forces us to over-ride the method defined in java.io.Writer */
	@:overload @:public public function write(val : Int) : Void;
	
	/** This method forces us to over-ride the method defined in java.io.Writer */
	@:overload @:public public function write(chars : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/** This method forces us to over-ride the method defined in java.io.Writer */
	@:overload @:public public function write(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, count : Int) : Void;
	
	/** This method forces us to over-ride the method defined in java.io.Writer */
	@:overload @:public public function write(chars : String) : Void;
	
	/** This method forces us to over-ride the method defined in java.io.Writer */
	@:overload @:public public function write(chars : String, start : Int, count : Int) : Void;
	
	/** This method forces us to over-ride the method defined in java.io.Writer */
	@:overload @:public public function flush() : Void;
	
	/** This method forces us to over-ride the method defined in java.io.Writer */
	@:overload @:public public function close() : Void;
	
	/**
	* If this method returns null, getOutputStream() must return non-null.
	* Get the writer that this writer sends its output to.
	*
	* It is possible that the Writer returned by this method does not
	* implement the WriterChain interface.
	*/
	@:overload @:public public function getWriter() : java.io.Writer;
	
	/**
	* If this method returns null, getWriter() must return non-null.
	* Get the OutputStream that this writer sends its output to.
	*/
	@:overload @:public public function getOutputStream() : java.io.OutputStream;
	
	
}
