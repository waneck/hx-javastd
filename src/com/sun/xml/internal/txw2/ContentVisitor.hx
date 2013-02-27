package com.sun.xml.internal.txw2;
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
/**
* Visits {@link Content}.
*
* @author Kohsuke Kawaguchi
*/
@:internal extern interface ContentVisitor
{
	@:overload public function onStartDocument() : Void;
	
	@:overload public function onEndDocument() : Void;
	
	@:overload public function onEndTag() : Void;
	
	@:overload public function onPcdata(buffer : java.lang.StringBuilder) : Void;
	
	@:overload public function onCdata(buffer : java.lang.StringBuilder) : Void;
	
	@:overload public function onStartTag(nsUri : String, localName : String, attributes : com.sun.xml.internal.txw2.Attribute, namespaces : com.sun.xml.internal.txw2.NamespaceDecl) : Void;
	
	@:overload public function onComment(buffer : java.lang.StringBuilder) : Void;
	
	
}
