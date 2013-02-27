package com.sun.xml.internal.messaging.saaj.soap;
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
/**
* Created on Nov 19, 2002
*
* To change this generated comment edit the template variable "filecomment":
* Window>Preferences>Java>Templates.
* To enable and disable the creation of file comments go to
* Window>Preferences>Java>Code Generation.
*/
extern class SOAPIOException extends java.io.IOException
{
	@:overload public function new() : Void;
	
	@:overload public function new(s : String) : Void;
	
	@:overload public function new(reason : String, cause : java.lang.Throwable) : Void;
	
	@:overload public function new(cause : java.lang.Throwable) : Void;
	
	@:overload override public function fillInStackTrace() : java.lang.Throwable;
	
	@:overload override public function getLocalizedMessage() : String;
	
	@:overload override public function getMessage() : String;
	
	@:overload override public function printStackTrace() : Void;
	
	@:overload override public function printStackTrace(s : java.io.PrintStream) : Void;
	
	@:overload override public function printStackTrace(s : java.io.PrintWriter) : Void;
	
	@:overload override public function toString() : String;
	
	
}
