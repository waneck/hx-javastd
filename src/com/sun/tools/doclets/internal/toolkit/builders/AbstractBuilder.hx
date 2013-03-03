package com.sun.tools.doclets.internal.toolkit.builders;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
* The superclass for all builders.  A builder is a class that provides
* the structure and content of API documentation.  A builder is completely
* doclet independent which means that any doclet can use builders to
* construct documentation, as long as it impelements the appropriate
* writer interfaces.  For example, if a doclet wanted to use
* {@link ConstantsSummaryBuilder} to build a constant summary, all it has to
* do is implement the ConstantsSummaryWriter interface and pass it to the
* builder using a WriterFactory.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Jamie Ho
* @since 1.5
*/
@:require(java5) extern class AbstractBuilder
{
	/**
	* The configuration used in this run of the doclet.
	*/
	@:protected private var configuration : com.sun.tools.doclets.internal.toolkit.Configuration;
	
	/**
	* Keep track of which packages we have seen for
	* efficiency purposes.  We don't want to copy the
	* doc files multiple times for a single package.
	*/
	@:protected @:static private static var containingPackagesSeen : java.util.Set<String>;
	
	/**
	* True if we want to print debug output.
	*/
	@:protected @:static @:final private static var DEBUG(default, null) : Bool;
	
	/**
	* Construct a Builder.
	* @param configuration the configuration used in this run
	*        of the doclet.
	*/
	@:overload @:public public function new(configuration : com.sun.tools.doclets.internal.toolkit.Configuration) : Void;
	
	/**
	* Return the name of this builder.
	*
	* @return the name of the builder.
	*/
	@:overload @:public @:abstract public function getName() : String;
	
	/**
	* Build the documentation.
	*
	* @throws IOException there was a problem writing the output.
	*/
	@:overload @:public @:abstract public function build() : Void;
	
	/**
	* Build the documentation, as specified by the given XML element.
	*
	* @param node the XML element that specifies which component to document.
	* @param contentTree content tree to which the documentation will be added
	*/
	@:overload @:protected private function build(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the documentation, as specified by the children of the given XML element.
	*
	* @param node the XML element that specifies which components to document.
	* @param contentTree content tree to which the documentation will be added
	*/
	@:overload @:protected private function buildChildren(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Given the name and parameters, invoke the method in the builder.  This
	* method is required to invoke the appropriate build method as instructed
	* by the builder XML file.
	*
	* @param methodName   the name of the method that we would like to invoke.
	* @param paramClasses the types for each parameter.
	* @param params       the parameters of the method.
	*/
	@:overload @:protected private function invokeMethod(methodName : String, paramClasses : java.NativeArray<Class<Dynamic>>, params : java.NativeArray<Dynamic>) : Void;
	
	
}
