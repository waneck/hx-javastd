package javax.xml.transform.sax;
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
extern interface TemplatesHandler extends org.xml.sax.ContentHandler
{
	/**
	* When a TemplatesHandler object is used as a ContentHandler
	* for the parsing of transformation instructions, it creates a Templates object,
	* which the caller can get once the SAX events have been completed.
	*
	* @return The Templates object that was created during
	* the SAX event process, or null if no Templates object has
	* been created.
	*
	*/
	@:overload public function getTemplates() : javax.xml.transform.Templates;
	
	/**
	* Set the base ID (URI or system ID) for the Templates object
	* created by this builder.  This must be set in order to
	* resolve relative URIs in the stylesheet.  This must be
	* called before the startDocument event.
	*
	* @param systemID Base URI for this stylesheet.
	*/
	@:overload public function setSystemId(systemID : String) : Void;
	
	/**
	* Get the base ID (URI or system ID) from where relative
	* URLs will be resolved.
	* @return The systemID that was set with {@link #setSystemId}.
	*/
	@:overload public function getSystemId() : String;
	
	
}
