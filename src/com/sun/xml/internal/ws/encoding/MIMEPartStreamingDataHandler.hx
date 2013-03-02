package com.sun.xml.internal.ws.encoding;
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
extern class MIMEPartStreamingDataHandler extends com.sun.xml.internal.org.jvnet.staxex.StreamingDataHandler
{
	@:overload public function new(part : com.sun.xml.internal.org.jvnet.mimepull.MIMEPart) : Void;
	
	@:overload override public function readOnce() : java.io.InputStream;
	
	@:overload override public function moveTo(file : java.io.File) : Void;
	
	@:overload override public function close() : Void;
	
	
}
@:native('com$sun$xml$internal$ws$encoding$MIMEPartStreamingDataHandler$StreamingDataSource') @:internal extern class MIMEPartStreamingDataHandler_StreamingDataSource implements javax.activation.DataSource
{
	@:overload public function getInputStream() : java.io.InputStream;
	
	@:overload public function getOutputStream() : java.io.OutputStream;
	
	@:overload public function getContentType() : String;
	
	@:overload public function getName() : String;
	
	@:overload public function close() : Void;
	
	
}
@:native('com$sun$xml$internal$ws$encoding$MIMEPartStreamingDataHandler$MyIOException') @:internal extern class MIMEPartStreamingDataHandler_MyIOException extends java.io.IOException
{
	@:overload override public function getCause() : java.lang.Throwable;
	
	
}
