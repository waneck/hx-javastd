package com.sun.tools.internal.xjc.api;
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
extern interface J2SJAXBModel extends com.sun.tools.internal.xjc.api.JAXBModel
{
	/**
	* Returns the name of the XML Type bound to the
	* specified Java type.
	*
	* @param javaType
	*      must not be null. This must be one of the {@link Reference}s specified
	*      in the {@link JavaCompiler#bind} method.
	*
	* @return
	*      null if it is not a part of the input to {@link JavaCompiler#bind}.
	*
	* @throws IllegalArgumentException
	*      if the parameter is null
	*/
	@:overload public function getXmlTypeName(javaType : com.sun.tools.internal.xjc.api.Reference) : javax.xml.namespace.QName;
	
	/**
	* Generates the schema documents from the model.
	*
	* @param outputResolver
	*      this object controls the output to which schemas
	*      will be sent.
	*
	* @throws IOException
	*      if {@link SchemaOutputResolver} throws an {@link IOException}.
	*/
	@:overload public function generateSchema(outputResolver : javax.xml.bind.SchemaOutputResolver, errorListener : com.sun.tools.internal.xjc.api.ErrorListener) : Void;
	
	/**
	* Generates the episode file from the model.
	*
	* <p>
	* The "episode file" is really just a JAXB customization file (but with vendor extensions,
	* at this point), that can be used later with a schema compilation to support separate
	* compilation.
	*
	* @param output
	*      This receives the generated episode file.
	* @since 2.1
	*/
	@:require(java1) @:overload public function generateEpisodeFile(output : javax.xml.transform.Result) : Void;
	
	
}
