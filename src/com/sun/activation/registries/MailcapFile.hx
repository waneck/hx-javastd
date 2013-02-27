package com.sun.activation.registries;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class MailcapFile
{
	/**
	* The constructor that takes a filename as an argument.
	*
	* @param new_fname The file name of the mailcap file.
	*/
	@:overload public function new(new_fname : String) : Void;
	
	/**
	* The constructor that takes an input stream as an argument.
	*
	* @param is        the input stream
	*/
	@:overload public function new(is : java.io.InputStream) : Void;
	
	/**
	* Mailcap file default constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Get the Map of MailcapEntries based on the MIME type.
	*
	* <p>
	* <strong>Semantics:</strong> First check for the literal mime type,
	* if that fails looks for wildcard <type>/\* and return that. Return the
	* list of all that hit.
	*/
	@:overload public function getMailcapList(mime_type : String) : java.util.Map<Dynamic, Dynamic>;
	
	/**
	* Get the Map of fallback MailcapEntries based on the MIME type.
	*
	* <p>
	* <strong>Semantics:</strong> First check for the literal mime type,
	* if that fails looks for wildcard <type>/\* and return that. Return the
	* list of all that hit.
	*/
	@:overload public function getMailcapFallbackList(mime_type : String) : java.util.Map<Dynamic, Dynamic>;
	
	/**
	* Return all the MIME types known to this mailcap file.
	*/
	@:overload public function getMimeTypes() : java.NativeArray<String>;
	
	/**
	* Return all the native comands for the given MIME type.
	*/
	@:overload public function getNativeCommands(mime_type : String) : java.NativeArray<String>;
	
	/**
	* appendToMailcap: Append to this Mailcap DB, use the mailcap
	* format:
	* Comment == "# <i>comment string</i>
	* Entry == "mimetype;        javabeanclass<nl>
	*
	* Example:
	* # this is a comment
	* image/gif       jaf.viewers.ImageViewer
	*/
	@:overload public function appendToMailcap(mail_cap : String) : Void;
	
	/**
	*  A routine to parse individual entries in a Mailcap file.
	*
	*  Note that this routine does not handle line continuations.
	*  They should have been handled prior to calling this routine.
	*/
	@:overload private function parseLine(mailcapEntry : String) : Void;
	
	@:overload private static function reportParseError(expectedToken : Int, actualToken : Int, actualTokenValue : String) : Void;
	
	@:overload private static function reportParseError(expectedToken : Int, otherExpectedToken : Int, actualToken : Int, actualTokenValue : String) : Void;
	
	@:overload private static function reportParseError(expectedToken : Int, otherExpectedToken : Int, anotherExpectedToken : Int, actualToken : Int, actualTokenValue : String) : Void;
	
	
}
