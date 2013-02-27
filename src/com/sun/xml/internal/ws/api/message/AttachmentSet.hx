package com.sun.xml.internal.ws.api.message;
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
extern interface AttachmentSet extends java.lang.Iterable<com.sun.xml.internal.ws.api.message.Attachment>
{
	/**
	* Gets the attachment by the content ID.
	*
	* @param contentId
	*      The content ID like "foo-bar-zot@abc.com", without
	*      surrounding '&lt;' and '>' used as the transfer syntax.
	*
	* @return null
	*      if no such attachment exist.
	*/
	@:overload public function get(contentId : String) : com.sun.xml.internal.ws.api.message.Attachment;
	
	/**
	* Returns true if there's no attachment.
	*/
	@:overload public function isEmpty() : Bool;
	
	/**
	* Adds an attachment to this set.
	*
	* <p>
	* Note that it's OK for an {@link Attachment} to belong to
	* more than one {@link AttachmentSet} (which is in fact
	* necessary when you wrap a {@link Message} into another.
	*
	* @param att
	*      must not be null.
	*/
	@:overload public function add(att : com.sun.xml.internal.ws.api.message.Attachment) : Void;
	
	
}
