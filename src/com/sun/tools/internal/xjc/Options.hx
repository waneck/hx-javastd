package com.sun.tools.internal.xjc;
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
extern class Options
{
	/** If "-debug" is specified. */
	@:public public var debugMode : Bool;
	
	/** If the "-verbose" option is specified. */
	@:public public var verbose : Bool;
	
	/** If the "-quiet" option is specified. */
	@:public public var quiet : Bool;
	
	/** If the -readOnly option is specified. */
	@:public public var readOnly : Bool;
	
	/** No file header comment (to be more friendly with diff.) */
	@:public public var noFileHeader : Bool;
	
	/** When on, fixes getter/setter generation to match the Bean Introspection API */
	@:public public var enableIntrospection : Bool;
	
	/** When on, generates content property for types with multiple xs:any derived elements (which is supposed to be correct behaviour) */
	@:public public var contentForWildcard : Bool;
	
	/** Encoding to be used by generated java sources, null for platform default. */
	@:public public var encoding : String;
	
	/**
	* Check the source schemas with extra scrutiny.
	* The exact meaning depends on the schema language.
	*/
	@:public public var strictCheck : Bool;
	
	/**
	* If -explicit-annotation option is specified.
	* <p>
	* This generates code that works around issues specific to 1.4 runtime.
	*/
	@:public public var runtime14 : Bool;
	
	/**
	* If true, try to resolve name conflicts automatically by assigning mechanical numbers.
	*/
	@:public public var automaticNameConflictResolution : Bool;
	
	/**
	* strictly follow the compatibility rules and reject schemas that
	* contain features from App. E.2, use vendor binding extensions
	*/
	@:public @:static @:final public static var STRICT(default, null) : Int;
	
	/**
	* loosely follow the compatibility rules and allow the use of vendor
	* binding extensions
	*/
	@:public @:static @:final public static var EXTENSION(default, null) : Int;
	
	/**
	* this switch determines how carefully the compiler will follow
	* the compatibility rules in the spec. Either <code>STRICT</code>
	* or <code>EXTENSION</code>.
	*/
	@:public public var compatibilityMode : Int;
	
	@:overload @:public public function isExtensionMode() : Bool;
	
	/**
	* Generates output for the specified version of the runtime.
	*/
	@:public public var target : com.sun.tools.internal.xjc.api.SpecVersion;
	
	@:overload @:public public function new() : Void;
	
	/**
	* Target directory when producing files.
	* <p>
	* This field is not used when XJC is driven through the XJC API.
	* Plugins that need to generate extra files should do so by using
	* {@link JPackage#addResourceFile(JResourceFile)}.
	*/
	@:public public var targetDir : java.io.File;
	
	/**
	* Actually stores {@link CatalogResolver}, but the field
	* type is made to {@link EntityResolver} so that XJC can be
	* used even if resolver.jar is not available in the classpath.
	*/
	@:public public var entityResolver : org.xml.sax.EntityResolver;
	
	/**
	* The -p option that should control the default Java package that
	* will contain the generated code. Null if unspecified.
	*/
	@:public public var defaultPackage : String;
	
	/**
	* Similar to the -p option, but this one works with a lower priority,
	* and customizations overrides this. Used by JAX-RPC.
	*/
	@:public public var defaultPackage2 : String;
	
	/**
	* {@link Plugin}s that are enabled in this compilation.
	*/
	@:public @:final public var activePlugins(default, null) : java.util.List<com.sun.tools.internal.xjc.Plugin>;
	
	/**
	* Set of URIs that plug-ins recognize as extension bindings.
	*/
	@:public @:final public var pluginURIs(default, null) : java.util.Set<String>;
	
	/**
	* This allocator has the final say on deciding the class name.
	*/
	@:public public var classNameAllocator : com.sun.tools.internal.xjc.api.ClassNameAllocator;
	
	/**
	* This switch controls whether or not xjc will generate package level annotations
	*/
	@:public public var packageLevelAnnotations : Bool;
	
	/**
	* Gets the active {@link FieldRendererFactory} that shall be used to build {@link Model}.
	*
	* @return always non-null.
	*/
	@:overload @:public public function getFieldRendererFactory() : com.sun.tools.internal.xjc.generator.bean.field.FieldRendererFactory;
	
	/**
	* Sets the {@link FieldRendererFactory}.
	*
	* <p>
	* This method is for plugins to call to set a custom {@link FieldRendererFactory}.
	*
	* @param frf
	*      The {@link FieldRendererFactory} to be installed. Must not be null.
	* @param owner
	*      Identifies the plugin that owns this {@link FieldRendererFactory}.
	*      When two {@link Plugin}s try to call this method, this allows XJC
	*      to report it as a user-friendly error message.
	*
	* @throws BadCommandLineException
	*      If a conflit happens, this exception carries a user-friendly error
	*      message, indicating a conflict.
	*/
	@:overload @:public public function setFieldRendererFactory(frf : com.sun.tools.internal.xjc.generator.bean.field.FieldRendererFactory, owner : com.sun.tools.internal.xjc.Plugin) : Void;
	
	/**
	* Gets the active {@link NameConverter} that shall be used to build {@link Model}.
	*
	* @return can be null, in which case it's up to the binding.
	*/
	@:overload @:public public function getNameConverter() : com.sun.xml.internal.bind.api.impl.NameConverter;
	
	/**
	* Sets the {@link NameConverter}.
	*
	* <p>
	* This method is for plugins to call to set a custom {@link NameConverter}.
	*
	* @param nc
	*      The {@link NameConverter} to be installed. Must not be null.
	* @param owner
	*      Identifies the plugin that owns this {@link NameConverter}.
	*      When two {@link Plugin}s try to call this method, this allows XJC
	*      to report it as a user-friendly error message.
	*
	* @throws BadCommandLineException
	*      If a conflit happens, this exception carries a user-friendly error
	*      message, indicating a conflict.
	*/
	@:overload @:public public function setNameConverter(nc : com.sun.xml.internal.bind.api.impl.NameConverter, owner : com.sun.tools.internal.xjc.Plugin) : Void;
	
	/**
	* Gets all the {@link Plugin}s discovered so far.
	*
	* <p>
	* A plugins are enumerated when this method is called for the first time,
	* by taking {@link #classpaths} into account. That means
	* "-cp plugin.jar" has to come before you specify options to enable it.
	*/
	@:overload @:public public function getAllPlugins() : java.util.List<com.sun.tools.internal.xjc.Plugin>;
	
	@:overload @:public public function getSchemaLanguage() : com.sun.tools.internal.xjc.Language;
	
	@:overload @:public public function setSchemaLanguage(_schemaLanguage : com.sun.tools.internal.xjc.Language) : Void;
	
	/** Input schema files. */
	@:overload @:public public function getGrammars() : java.NativeArray<org.xml.sax.InputSource>;
	
	/**
	* Adds a new input schema.
	*/
	@:overload @:public public function addGrammar(is : org.xml.sax.InputSource) : Void;
	
	@:overload @:public public function addGrammar(source : java.io.File) : Void;
	
	/**
	* Recursively scan directories and add all XSD files in it.
	*/
	@:overload @:public public function addGrammarRecursive(dir : java.io.File) : Void;
	
	/** Input external binding files. */
	@:overload @:public public function getBindFiles() : java.NativeArray<org.xml.sax.InputSource>;
	
	/**
	* Adds a new binding file.
	*/
	@:overload @:public public function addBindFile(is : org.xml.sax.InputSource) : Void;
	
	/**
	* Adds a new binding file.
	*/
	@:overload @:public public function addBindFile(bindFile : java.io.File) : Void;
	
	/**
	* Recursively scan directories and add all ".xjb" files in it.
	*/
	@:overload @:public public function addBindFileRecursive(dir : java.io.File) : Void;
	
	@:public @:final public var classpaths(default, null) : java.util.List<java.net.URL>;
	
	/**
	* Gets a classLoader that can load classes specified via the
	* -classpath option.
	*/
	@:overload @:public public function getUserClassLoader(parent : java.lang.ClassLoader) : java.net.URLClassLoader;
	
	/**
	* Parses an option <code>args[i]</code> and return
	* the number of tokens consumed.
	*
	* @return
	*      0 if the argument is not understood. Returning 0
	*      will let the caller report an error.
	* @exception BadCommandLineException
	*      If the callee wants to provide a custom message for an error.
	*/
	@:overload @:public public function parseArgument(args : java.NativeArray<String>, i : Int) : Int;
	
	/**
	* Obtains an operand and reports an error if it's not there.
	*/
	@:overload @:public public function requireArgument(optionName : String, args : java.NativeArray<String>, i : Int) : String;
	
	/**
	* Adds a new catalog file.
	*/
	@:overload @:public public function addCatalog(catalogFile : java.io.File) : Void;
	
	/**
	* Parses arguments and fill fields of this object.
	*
	* @exception BadCommandLineException
	*      thrown when there's a problem in the command-line arguments
	*/
	@:overload @:public public function parseArguments(args : java.NativeArray<String>) : Void;
	
	/**
	* Finds the <tt>META-INF/sun-jaxb.episode</tt> file to add as a binding customization.
	*/
	@:overload @:public public function scanEpisodeFile(jar : java.io.File) : Void;
	
	/**
	* Guesses the schema language.
	*/
	@:overload @:public public function guessSchemaLanguage() : com.sun.tools.internal.xjc.Language;
	
	/**
	* Creates a configured CodeWriter that produces files into the specified directory.
	*/
	@:overload @:public public function createCodeWriter() : com.sun.codemodel.internal.CodeWriter;
	
	/**
	* Creates a configured CodeWriter that produces files into the specified directory.
	*/
	@:overload @:public public function createCodeWriter(core : com.sun.codemodel.internal.CodeWriter) : com.sun.codemodel.internal.CodeWriter;
	
	/**
	* Gets the string suitable to be used as the prolog comment baked into artifacts.
	* This is the string like "This file was generated by the JAXB RI on YYYY/mm/dd..."
	*/
	@:overload @:public public function getPrologComment() : String;
	
	@:overload @:public @:static public static function getBuildID() : String;
	
	
}
