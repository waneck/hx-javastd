package com.sun.xml.internal.ws.developer;
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
extern class StreamingAttachmentFeature extends javax.xml.ws.WebServiceFeature
{
	/**
	* Constant value identifying the {@link @StreamingAttachment} feature.
	*/
	public static var ID(default, null) : String;
	
	@:overload public function new() : Void;
	
	@:overload public function new(dir : String, parseEagerly : Bool, memoryThreshold : haxe.Int64) : Void;
	
	@:overload override public function getID() : String;
	
	/**
	* Returns the configuration object. Once this is called, you cannot
	* change the configuration.
	*
	* @return
	*/
	@:overload public function getConfig() : com.sun.xml.internal.org.jvnet.mimepull.MIMEConfig;
	
	/**
	* Directory in which large attachments are stored
	*/
	@:overload public function setDir(dir : String) : Void;
	
	/**
	* StreamingAttachment message is parsed eagerly
	*/
	@:overload public function setParseEagerly(parseEagerly : Bool) : Void;
	
	/**
	* After this threshold(no of bytes), large attachments are
	* written to file system
	*/
	@:overload public function setMemoryThreshold(memoryThreshold : haxe.Int64) : Void;
	
	
}