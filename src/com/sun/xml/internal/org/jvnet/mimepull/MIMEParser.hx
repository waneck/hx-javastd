package com.sun.xml.internal.org.jvnet.mimepull;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class MIMEParser implements java.lang.Iterable<com.sun.xml.internal.org.jvnet.mimepull.MIMEEvent>
{
	/**
	* Returns iterator for the parsing events. Use the iterator to advance
	* the parsing.
	*
	* @return iterator for parsing events
	*/
	@:overload @:public public function iterator() : java.util.Iterator<com.sun.xml.internal.org.jvnet.mimepull.MIMEEvent>;
	
	
}
@:native('com$sun$xml$internal$org$jvnet$mimepull$MIMEParser$STATE') privateextern enum MIMEParser_STATE
{
	START_MESSAGE;
	SKIP_PREAMBLE;
	START_PART;
	HEADERS;
	BODY;
	END_PART;
	END_MESSAGE;
	
}

@:native('com$sun$xml$internal$org$jvnet$mimepull$MIMEParser$MIMEEventIterator') @:internal extern class MIMEParser_MIMEEventIterator implements java.util.Iterator<com.sun.xml.internal.org.jvnet.mimepull.MIMEEvent>
{
	@:overload @:public public function hasNext() : Bool;
	
	@:overload @:public public function next() : com.sun.xml.internal.org.jvnet.mimepull.MIMEEvent;
	
	@:overload @:public public function remove() : Void;
	
	
}
@:native('com$sun$xml$internal$org$jvnet$mimepull$MIMEParser$LineInputStream') @:internal extern class MIMEParser_LineInputStream
{
	/*
	* Read a line containing only ASCII characters from the input
	* stream. A line is terminated by a CR or NL or CR-NL sequence.
	* A common error is a CR-CR-NL sequence, which will also terminate
	* a line.
	* The line terminator is not returned as part of the returned
	* String. Returns null if no data is available. <p>
	*
	* This class is similar to the deprecated
	* <code>DataInputStream.readLine()</code>
	*/
	@:overload @:public public function readLine() : String;
	
	
}
