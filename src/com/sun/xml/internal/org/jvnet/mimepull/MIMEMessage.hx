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
extern class MIMEMessage
{
	/**
	* @see MIMEMessage(InputStream, String, MIMEConfig)
	*/
	@:overload @:public public function new(_in : java.io.InputStream, boundary : String) : Void;
	
	/**
	* Creates a MIME message from the content's stream. The content stream
	* is closed when EOF is reached.
	*
	* @param in MIME message stream
	* @param boundary the separator for parts(pass it without --)
	* @param config various configuration parameters
	*/
	@:overload @:public public function new(_in : java.io.InputStream, boundary : String, config : com.sun.xml.internal.org.jvnet.mimepull.MIMEConfig) : Void;
	
	/**
	* Gets all the attachments by parsing the entire MIME message. Avoid
	* this if possible since it is an expensive operation.
	*
	* @return list of attachments.
	*/
	@:overload @:public public function getAttachments() : java.util.List<com.sun.xml.internal.org.jvnet.mimepull.MIMEPart>;
	
	/**
	* Creates nth attachment lazily. It doesn't validate
	* if the message has so many attachments. To
	* do the validation, the message needs to be parsed.
	* The parsing of the message is done lazily and is done
	* while reading the bytes of the part.
	*
	* @param index sequential order of the part. starts with zero.
	* @return attachemnt part
	*/
	@:overload @:public public function getPart(index : Int) : com.sun.xml.internal.org.jvnet.mimepull.MIMEPart;
	
	/**
	* Creates a lazy attachment for a given Content-ID. It doesn't validate
	* if the message contains an attachment with the given Content-ID. To
	* do the validation, the message needs to be parsed. The parsing of the
	* message is done lazily and is done while reading the bytes of the part.
	*
	* @param contentId Content-ID of the part, expects Content-ID without <, >
	* @return attachemnt part
	*/
	@:overload @:public public function getPart(contentId : String) : com.sun.xml.internal.org.jvnet.mimepull.MIMEPart;
	
	/**
	* Parses the whole MIME message eagerly
	*/
	@:overload @:public public function parseAll() : Void;
	
	/**
	* Parses the MIME message in a pull fashion.
	*
	* @return
	*      false if the parsing is completed.
	*/
	@:overload @:public @:synchronized public function makeProgress() : Bool;
	
	
}
