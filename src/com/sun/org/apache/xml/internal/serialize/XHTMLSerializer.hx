package com.sun.org.apache.xml.internal.serialize;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class XHTMLSerializer extends com.sun.org.apache.xml.internal.serialize.HTMLSerializer
{
	/**
	* Constructs a new serializer. The serializer cannot be used without
	* calling {@link #setOutputCharStream} or {@link #setOutputByteStream}
	* first.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new serializer. The serializer cannot be used without
	* calling {@link #setOutputCharStream} or {@link #setOutputByteStream}
	* first.
	*/
	@:overload public function new(format : com.sun.org.apache.xml.internal.serialize.OutputFormat) : Void;
	
	/**
	* Constructs a new serializer that writes to the specified writer
	* using the specified output format. If <tt>format</tt> is null,
	* will use a default output format.
	*
	* @param writer The writer to use
	* @param format The output format to use, null for the default
	*/
	@:overload public function new(writer : java.io.Writer, format : com.sun.org.apache.xml.internal.serialize.OutputFormat) : Void;
	
	/**
	* Constructs a new serializer that writes to the specified output
	* stream using the specified output format. If <tt>format</tt>
	* is null, will use a default output format.
	*
	* @param output The output stream to use
	* @param format The output format to use, null for the default
	*/
	@:overload public function new(output : java.io.OutputStream, format : com.sun.org.apache.xml.internal.serialize.OutputFormat) : Void;
	
	@:overload override public function setOutputFormat(format : com.sun.org.apache.xml.internal.serialize.OutputFormat) : Void;
	
	
}
