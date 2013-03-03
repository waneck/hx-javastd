package com.sun.tools.internal.xjc.reader.xmlschema;
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
extern class BGMBuilder extends com.sun.tools.internal.xjc.reader.xmlschema.BindingComponent
{
	/**
	* Entry point.
	*/
	@:overload @:public @:static public static function build(_schemas : com.sun.xml.internal.xsom.XSSchemaSet, codeModel : com.sun.codemodel.internal.JCodeModel, _errorReceiver : com.sun.tools.internal.xjc.ErrorReceiver, opts : com.sun.tools.internal.xjc.Options) : com.sun.tools.internal.xjc.model.Model;
	
	/**
	* True if the compiler is running in the extension mode
	* (as opposed to the strict conformance mode.)
	*/
	@:public @:final public var inExtensionMode(default, null) : Bool;
	
	/**
	* If this is non-null, this package name takes over
	* all the schema customizations.
	*/
	@:public @:final public var defaultPackage1(default, null) : String;
	
	/**
	* If this is non-null, this package name will be
	* used when no customization is specified.
	*/
	@:public @:final public var defaultPackage2(default, null) : String;
	
	@:public @:final public var model(default, null) : com.sun.tools.internal.xjc.model.Model;
	
	@:public @:final public var fieldRendererFactory(default, null) : com.sun.tools.internal.xjc.generator.bean.field.FieldRendererFactory;
	
	@:overload @:protected private function new(defaultPackage1 : String, defaultPackage2 : String, _inExtensionMode : Bool, fieldRendererFactory : com.sun.tools.internal.xjc.generator.bean.field.FieldRendererFactory, activePlugins : java.util.List<com.sun.tools.internal.xjc.Plugin>) : Void;
	
	/**
	* Gets the global bindings.
	*/
	@:overload @:public public function getGlobalBinding() : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIGlobalBinding;
	
	/**
	* Gets the particle binder for this binding.
	*/
	@:overload @:public public function getParticleBinder() : com.sun.tools.internal.xjc.reader.xmlschema.ParticleBinder;
	
	/**
	* Name converter that implements "XML->Java name conversion"
	* as specified in the spec.
	*
	* This object abstracts the detail that we use different name
	* conversion depending on the customization.
	*
	* <p>
	* This object should be used to perform any name conversion
	* needs, instead of the JJavaName class in CodeModel.
	*/
	@:overload @:public public function getNameConverter() : com.sun.xml.internal.bind.api.impl.NameConverter;
	
	/**
	* Gets or creates the BindInfo object associated to a schema component.
	*
	* @return
	*      Always return a non-null valid BindInfo object.
	*      Even if no declaration was specified, this method creates
	*      a new BindInfo so that new decls can be added.
	*/
	@:overload @:public public function getOrCreateBindInfo(schemaComponent : com.sun.xml.internal.xsom.XSComponent) : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BindInfo;
	
	/**
	* Gets the BindInfo object associated to a schema component.
	*
	* @return
	*      always return a valid {@link BindInfo} object. If none
	*      is specified for the given component, a dummy empty BindInfo
	*      will be returned.
	*/
	@:overload @:public public function getBindInfo(schemaComponent : com.sun.xml.internal.xsom.XSComponent) : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BindInfo;
	
	/**
	* Gets the {@link BIDom} object that applies to the given particle.
	*/
	@:overload @:protected @:final private function getLocalDomCustomization(p : com.sun.xml.internal.xsom.XSParticle) : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIDom;
	
	/**
	* If the component maps to a property, forwards to purple, otherwise to green.
	*
	* If the component is mapped to a type, this method needs to return true.
	* See the chart at the class javadoc.
	*/
	@:overload @:public public function ying(sc : com.sun.xml.internal.xsom.XSComponent, referer : com.sun.xml.internal.xsom.XSComponent) : Void;
	
	/**
	* Gets the shared instance of the identity transformer.
	*/
	@:overload @:public public function getIdentityTransformer() : javax.xml.transform.Transformer;
	
	/**
	* Find all types that refer to the given complex type.
	*/
	@:overload @:public public function getReferer(c : com.sun.xml.internal.xsom.XSType) : java.util.Set<com.sun.xml.internal.xsom.XSComponent>;
	
	/**
	* Returns the QName of the declaration.
	* @return null
	*      if the declaration is anonymous.
	*/
	@:overload @:public @:static public static function getName(decl : com.sun.xml.internal.xsom.XSDeclaration) : javax.xml.namespace.QName;
	
	/**
	* Derives a name from a schema component.
	*
	* This method handles prefix/suffix modification and
	* XML-to-Java name conversion.
	*
	* @param name
	*      The base name. This should be things like element names
	*      or type names.
	* @param comp
	*      The component from which the base name was taken.
	*      Used to determine how names are modified.
	*/
	@:overload @:public public function deriveName(name : String, comp : com.sun.xml.internal.xsom.XSComponent) : String;
	
	@:overload @:public public function isGenerateMixedExtensions() : Bool;
	
	
}
