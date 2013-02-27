package com.sun.xml.internal.stream.buffer;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class XMLStreamBufferMark extends com.sun.xml.internal.stream.buffer.XMLStreamBuffer
{
	/**
	* Create a mark from the buffer that is being created.
	*
	* <p>
	* A mark will be created from the current position of creation of the
	* {@link XMLStreamBuffer} that is being created by a {@link AbstractCreator}.
	*
	* @param inscopeNamespaces
	* The in-scope namespaces on the fragment of XML infoset that is
	* to be marked.
	*
	* @param src
	* The {@link AbstractCreator} or {@link AbstractProcessor} from which the current
	* position of creation of the XMLStreamBuffer will be taken as the mark.
	*/
	@:overload public function new(inscopeNamespaces : java.util.Map<String, String>, src : com.sun.xml.internal.stream.buffer.AbstractCreatorProcessor) : Void;
	
	
}
