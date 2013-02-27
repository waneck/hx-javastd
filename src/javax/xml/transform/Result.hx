package javax.xml.transform;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
* <p>An object that implements this interface contains the information
* needed to build a transformation result tree.</p>
*
* @author <a href="Jeff.Suttor@Sun.com">Jeff Suttor</a>
*/
extern interface Result
{
	/**
	* Set the system identifier for this Result.
	*
	* <p>If the Result is not to be written to a file, the system identifier is optional.
	* The application may still want to provide one, however, for use in error messages
	* and warnings, or to resolve relative output identifiers.</p>
	*
	* @param systemId The system identifier as a URI string.
	*/
	@:overload public function setSystemId(systemId : String) : Void;
	
	/**
	* Get the system identifier that was set with setSystemId.
	*
	* @return The system identifier that was set with setSystemId,
	* or null if setSystemId was not called.
	*/
	@:overload public function getSystemId() : String;
	
	
}
