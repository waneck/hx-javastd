package com.sun.tools.javac.processing;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class JavacProcessingEnvironment implements javax.annotation.processing.ProcessingEnvironment implements java.io.Closeable
{
	@:overload @:public public function new(context : com.sun.tools.javac.util.Context, processors : java.lang.Iterable<javax.annotation.processing.Processor>) : Void;
	
	@:overload @:public public function atLeastOneProcessor() : Bool;
	
	@:overload @:public public function doProcessing(context : com.sun.tools.javac.util.Context, roots : com.sun.tools.javac.util.List<JCCompilationUnit>, classSymbols : com.sun.tools.javac.util.List<ClassSymbol>, pckSymbols : java.lang.Iterable<PackageSymbol>) : com.sun.tools.javac.main.JavaCompiler;
	
	/**
	* Free resources related to annotation processing.
	*/
	@:overload @:public public function close() : Void;
	
	/**
	* {@inheritdoc}
	*
	* Command line options suitable for presenting to annotation
	* processors.  "-Afoo=bar" should be "-Afoo" => "bar".
	*/
	@:overload @:public public function getOptions() : java.util.Map<String, String>;
	
	@:overload @:public public function getMessager() : javax.annotation.processing.Messager;
	
	@:overload @:public public function getFiler() : javax.annotation.processing.Filer;
	
	@:overload @:public public function getElementUtils() : com.sun.tools.javac.model.JavacElements;
	
	@:overload @:public public function getTypeUtils() : com.sun.tools.javac.model.JavacTypes;
	
	@:overload @:public public function getSourceVersion() : javax.lang.model.SourceVersion;
	
	@:overload @:public public function getLocale() : java.util.Locale;
	
	@:overload @:public public function getSpecifiedPackages() : java.util.Set<com.sun.tools.javac.code.Symbol.Symbol_PackageSymbol>;
	
	@:public @:static @:final public static var noMatches(default, null) : java.util.regex.Pattern;
	
	/**
	* Return true if the argument string is a valid import-style
	* string specifying claimed annotations; return false otherwise.
	*/
	@:overload @:public @:static public static function isValidImportString(s : String) : Bool;
	
	@:overload @:public @:static public static function validImportStringToPattern(s : String) : java.util.regex.Pattern;
	
	/**
	* For internal use only.  This method will be
	* removed without warning.
	*/
	@:overload @:public public function getContext() : com.sun.tools.javac.util.Context;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public @:static public static function isValidOptionName(optionName : String) : Bool;
	
	
}
/**
* Use a service loader appropriate for the platform to provide an
* iterator over annotations processors.  If
* java.util.ServiceLoader is present use it, otherwise, use
* sun.misc.Service, otherwise fail if a loader is needed.
*/
@:native('com$sun$tools$javac$processing$JavacProcessingEnvironment$ServiceIterator') @:internal extern class JavacProcessingEnvironment_ServiceIterator implements java.util.Iterator<javax.annotation.processing.Processor>
{
	@:overload @:public public function hasNext() : Bool;
	
	@:overload @:public public function next() : javax.annotation.processing.Processor;
	
	@:overload @:public public function remove() : Void;
	
	@:overload @:public public function close() : Void;
	
	
}
@:native('com$sun$tools$javac$processing$JavacProcessingEnvironment$NameProcessIterator') @:internal extern class JavacProcessingEnvironment_NameProcessIterator implements java.util.Iterator<javax.annotation.processing.Processor>
{
	@:overload @:public public function hasNext() : Bool;
	
	@:overload @:public public function next() : javax.annotation.processing.Processor;
	
	@:overload @:public public function remove() : Void;
	
	
}
/**
* State about how a processor has been used by the tool.  If a
* processor has been used on a prior round, its process method is
* called on all subsequent rounds, perhaps with an empty set of
* annotations to process.  The {@code annotatedSupported} method
* caches the supported annotation information from the first (and
* only) getSupportedAnnotationTypes call to the processor.
*/
@:native('com$sun$tools$javac$processing$JavacProcessingEnvironment$ProcessorState') @:internal extern class JavacProcessingEnvironment_ProcessorState
{
	@:public public var processor : javax.annotation.processing.Processor;
	
	@:public public var contributed : Bool;
	
	@:overload @:public public function annotationSupported(annotationName : String) : Bool;
	
	/**
	* Remove options that are matched by this processor.
	*/
	@:overload @:public public function removeSupportedOptions(unmatchedProcessorOptions : java.util.Set<String>) : Void;
	
	
}
/**
* This class holds information about the processors that have
* been discoverd so far as well as the means to discover more, if
* necessary.  A single iterator should be used per round of
* annotation processing.  The iterator first visits already
* discovered processors then fails over to the service provider
* mechanism if additional queries are made.
*/
@:native('com$sun$tools$javac$processing$JavacProcessingEnvironment$DiscoveredProcessors') @:internal extern class JavacProcessingEnvironment_DiscoveredProcessors implements java.lang.Iterable<com.sun.tools.javac.processing.JavacProcessingEnvironment.JavacProcessingEnvironment_ProcessorState>
{
	@:overload @:public public function iterator() : com.sun.tools.javac.processing.JavacProcessingEnvironment.JavacProcessingEnvironment_DiscoveredProcessors_ProcessorStateIterator;
	
	/**
	* Free jar files, etc. if using a service loader.
	*/
	@:overload @:public public function close() : Void;
	
	
}
@:native('com$sun$tools$javac$processing$JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator') @:internal extern class JavacProcessingEnvironment_DiscoveredProcessors_ProcessorStateIterator implements java.util.Iterator<com.sun.tools.javac.processing.JavacProcessingEnvironment.JavacProcessingEnvironment_ProcessorState>
{
	@:overload @:public public function next() : com.sun.tools.javac.processing.JavacProcessingEnvironment.JavacProcessingEnvironment_ProcessorState;
	
	@:overload @:public public function hasNext() : Bool;
	
	@:overload @:public public function remove() : Void;
	
	/**
	* Run all remaining processors on the procStateList that
	* have not already run this round with an empty set of
	* annotations.
	*/
	@:overload @:public public function runContributingProcs(re : javax.annotation.processing.RoundEnvironment) : Void;
	
	
}
/**
* Computes the set of annotations on the symbol in question.
* Leave class public for external testing purposes.
*/
@:native('com$sun$tools$javac$processing$JavacProcessingEnvironment$ComputeAnnotationSet') extern class JavacProcessingEnvironment_ComputeAnnotationSet extends javax.lang.model.util.ElementScanner7<java.util.Set<javax.lang.model.element.TypeElement>, java.util.Set<javax.lang.model.element.TypeElement>>
{
	@:overload @:public public function new(elements : javax.lang.model.util.Elements) : Void;
	
	@:overload @:public public function visitPackage(e : javax.lang.model.element.PackageElement, p : java.util.Set<javax.lang.model.element.TypeElement>) : java.util.Set<javax.lang.model.element.TypeElement>;
	
	@:overload @:public public function scan(e : javax.lang.model.element.Element, p : java.util.Set<javax.lang.model.element.TypeElement>) : java.util.Set<javax.lang.model.element.TypeElement>;
	
	
}
/**
* Helper object for a single round of annotation processing.
*/
@:native('com$sun$tools$javac$processing$JavacProcessingEnvironment$Round') @:internal extern class JavacProcessingEnvironment_Round
{
	
}
