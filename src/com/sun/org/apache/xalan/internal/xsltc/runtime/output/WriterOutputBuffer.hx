package com.sun.org.apache.xalan.internal.xsltc.runtime.output;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
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
* $Id: WriterOutputBuffer.java,v 1.2.4.1 2005/09/06 11:43:01 pvedula Exp $
*/
@:internal extern class WriterOutputBuffer implements com.sun.org.apache.xalan.internal.xsltc.runtime.output.OutputBuffer
{
	/**
	* Initializes a WriterOutputBuffer by creating an instance of a
	* BufferedWriter. The size of the buffer in this writer may have
	* a significant impact on throughput. Solaris prefers a larger
	* buffer, while Linux works better with a smaller one.
	*/
	@:overload public function new(writer : java.io.Writer) : Void;
	
	@:overload public function close() : String;
	
	@:overload public function append(s : String) : com.sun.org.apache.xalan.internal.xsltc.runtime.output.OutputBuffer;
	
	@:overload public function append(s : java.NativeArray<java.StdTypes.Char16>, from : Int, to : Int) : com.sun.org.apache.xalan.internal.xsltc.runtime.output.OutputBuffer;
	
	@:overload public function append(ch : java.StdTypes.Char16) : com.sun.org.apache.xalan.internal.xsltc.runtime.output.OutputBuffer;
	
	
}
