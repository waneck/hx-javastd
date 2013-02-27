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
extern class AbstractProcessor implements javax.annotation.processing.Processor
{
	/**
	* Processing environment providing by the tool framework.
	*/
	private var processingEnv : javax.annotation.processing.ProcessingEnvironment;
	
	/**
	* Constructor for subclasses to call.
	*/
	@:overload private function new() : Void;
	
	/**
	* If the processor class is annotated with {@link
	* SupportedOptions}, return an unmodifiable set with the same set
	* of strings as the annotation.  If the class is not so
	* annotated, an empty set is returned.
	*
	* @return the options recognized by this processor, or an empty
	* set if none
	*/
	@:overload public function getSupportedOptions() : java.util.Set<String>;
	
	/**
	* If the processor class is annotated with {@link
	* SupportedAnnotationTypes}, return an unmodifiable set with the
	* same set of strings as the annotation.  If the class is not so
	* annotated, an empty set is returned.
	*
	* @return the names of the annotation types supported by this
	* processor, or an empty set if none
	*/
	@:overload public function getSupportedAnnotationTypes() : java.util.Set<String>;
	
	/**
	* If the processor class is annotated with {@link
	* SupportedSourceVersion}, return the source version in the
	* annotation.  If the class is not so annotated, {@link
	* SourceVersion#RELEASE_6} is returned.
	*
	* @return the latest source version supported by this processor
	*/
	@:overload public function getSupportedSourceVersion() : javax.lang.model.SourceVersion;
	
	/**
	* Initializes the processor with the processing environment by
	* setting the {@code processingEnv} field to the value of the
	* {@code processingEnv} argument.  An {@code
	* IllegalStateException} will be thrown if this method is called
	* more than once on the same object.
	*
	* @param processingEnv environment to access facilities the tool framework
	* provides to the processor
	* @throws IllegalStateException if this method is called more than once.
	*/
	@:overload @:synchronized public function init(processingEnv : javax.annotation.processing.ProcessingEnvironment) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:abstract public function process(annotations : java.util.Set<javax.lang.model.element.TypeElement>, roundEnv : javax.annotation.processing.RoundEnvironment) : Bool;
	
	/**
	* Returns an empty iterable of completions.
	*
	* @param element {@inheritDoc}
	* @param annotation {@inheritDoc}
	* @param member {@inheritDoc}
	* @param userText {@inheritDoc}
	*/
	@:overload public function getCompletions(element : javax.lang.model.element.Element, annotation : javax.lang.model.element.AnnotationMirror, member : javax.lang.model.element.ExecutableElement, userText : String) : java.lang.Iterable<javax.annotation.processing.Completion>;
	
	/**
	* Returns {@code true} if this object has been {@linkplain #init
	* initialized}, {@code false} otherwise.
	*
	* @return {@code true} if this object has been initialized,
	* {@code false} otherwise.
	*/
	@:overload @:synchronized private function isInitialized() : Bool;
	
	
}
