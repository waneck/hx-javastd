package javax.annotation.processing;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern interface ProcessingEnvironment
{
	/**
	* Returns the processor-specific options passed to the annotation
	* processing tool.  Options are returned in the form of a map from
	* option name to option value.  For an option with no value, the
	* corresponding value in the map is {@code null}.
	*
	* <p>See documentation of the particular tool infrastructure
	* being used for details on how to pass in processor-specific
	* options.  For example, a command-line implementation may
	* distinguish processor-specific options by prefixing them with a
	* known string like {@code "-A"}; other tool implementations may
	* follow different conventions or provide alternative mechanisms.
	* A given implementation may also provide implementation-specific
	* ways of finding options passed to the tool in addition to the
	* processor-specific options.
	*
	* @return the processor-specific options passed to the tool
	*/
	@:overload public function getOptions() : java.util.Map<String, String>;
	
	/**
	* Returns the messager used to report errors, warnings, and other
	* notices.
	*
	* @return the messager
	*/
	@:overload public function getMessager() : javax.annotation.processing.Messager;
	
	/**
	* Returns the filer used to create new source, class, or auxiliary
	* files.
	*
	* @return the filer
	*/
	@:overload public function getFiler() : javax.annotation.processing.Filer;
	
	/**
	* Returns an implementation of some utility methods for
	* operating on elements
	*
	* @return element utilities
	*/
	@:overload public function getElementUtils() : javax.lang.model.util.Elements;
	
	/**
	* Returns an implementation of some utility methods for
	* operating on types.
	*
	* @return type utilities
	*/
	@:overload public function getTypeUtils() : javax.lang.model.util.Types;
	
	/**
	* Returns the source version that any generated {@linkplain
	* Filer#createSourceFile source} and {@linkplain
	* Filer#createClassFile class} files should conform to.
	*
	* @return the source version to which generated source and class
	*         files should conform to
	* @see Processor#getSupportedSourceVersion
	*/
	@:overload public function getSourceVersion() : javax.lang.model.SourceVersion;
	
	/**
	* Returns the current locale or {@code null} if no locale is in
	* effect.  The locale can be be used to provide localized
	* {@linkplain Messager messages}.
	*
	* @return the current locale or {@code null} if no locale is in
	* effect
	*/
	@:overload public function getLocale() : java.util.Locale;
	
	
}
