package com.sun.tools.internal.xjc.model;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class CDefaultValue
{
	/**
	* Object that computes the default value expression lazily.
	*
	* The computation is done lazily because often the default value
	* needs to refer to things (such as enum classes) that are only generated
	* after some of the outline is built.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:overload @:abstract public function compute(outline : com.sun.tools.internal.xjc.outline.Outline) : com.sun.codemodel.internal.JExpression;
	
	/**
	* Creates a new {@link CDefaultValue} that computes the default value
	* by applying a lexical representation to a {@link TypeUse}.
	*/
	@:overload public static function create(typeUse : com.sun.tools.internal.xjc.model.TypeUse, defaultValue : com.sun.xml.internal.xsom.XmlString) : com.sun.tools.internal.xjc.model.CDefaultValue;
	
	
}
