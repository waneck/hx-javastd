package javax.swing.text.html;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class FormSubmitEvent extends javax.swing.text.html.HTMLFrameHyperlinkEvent
{
	/**
	* Gets the form method type.
	*
	* @return the form method type, either
	* <code>Method.GET</code> or <code>Method.POST</code>.
	*/
	@:overload public function getMethod() : FormSubmitEvent_MethodType;
	
	/**
	* Gets the form submission data.
	*
	* @return the string representing the form submission data.
	*/
	@:overload public function getData() : String;
	
	
}
/**
* Represents an HTML form method type.
* <UL>
* <LI><code>GET</code> corresponds to the GET form method</LI>
* <LI><code>POST</code> corresponds to the POST from method</LI>
* </UL>
* @since 1.5
*/
@:require(java5) @:native('javax$swing$text$html$FormSubmitEvent$MethodType') extern enum FormSubmitEvent_MethodType
{
	GET;
	POST;
	
}

