package com.sun.tools.doclets.formats.html;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
* A factory that returns a link given the information about it.
*
* @author Jamie Ho
* @since 1.5
*/
@:require(java5) extern class LinkFactoryImpl extends com.sun.tools.doclets.internal.toolkit.util.links.LinkFactory
{
	@:overload @:public public function new(writer : com.sun.tools.doclets.formats.html.HtmlDocletWriter) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:protected override private function getOutputInstance() : com.sun.tools.doclets.internal.toolkit.util.links.LinkOutput;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:protected override private function getClassLink(linkInfo : com.sun.tools.doclets.internal.toolkit.util.links.LinkInfo) : com.sun.tools.doclets.internal.toolkit.util.links.LinkOutput;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:protected override private function getTypeParameterLink(linkInfo : com.sun.tools.doclets.internal.toolkit.util.links.LinkInfo, typeParam : com.sun.javadoc.Type) : com.sun.tools.doclets.internal.toolkit.util.links.LinkOutput;
	
	
}
