package com.sun.beans.decoder;
/*
* Copyright (c) 2008, Oracle and/or its affiliates. All rights reserved.
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
* This class is intended to handle &lt;boolean&gt; element.
* This element specifies {@code boolean} values.
* The class {@link Boolean} is used as wrapper for these values.
* The result value is created from text of the body of this element.
* The body parsing is described in the class {@link StringElementHandler}.
* For example:<pre>
* &lt;boolean&gt;true&lt;/boolean&gt;</pre>
* is shortcut to<pre>
* &lt;method name="valueOf" class="java.lang.Boolean"&gt;
*     &lt;string&gt;true&lt;/string&gt;
* &lt;/method&gt;</pre>
* which is equivalent to {@code Boolean.valueOf("true")} in Java code.
* <p>The following atribute is supported:
* <dl>
* <dt>id
* <dd>the identifier of the variable that is intended to store the result
* </dl>
*
* @since 1.7
*
* @author Sergey A. Malenkov
*/
@:require(java7) @:internal extern class BooleanElementHandler extends com.sun.beans.decoder.StringElementHandler
{
	/**
	* Creates {@code boolean} value from
	* the text of the body of this element.
	*
	* @param argument  the text of the body
	* @return evaluated {@code boolean} value
	*/
	@:overload @:public override public function getValue(argument : String) : Dynamic;
	
	
}
