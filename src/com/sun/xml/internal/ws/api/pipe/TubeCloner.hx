package com.sun.xml.internal.ws.api.pipe;
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
extern class TubeCloner
{
	/**
	* Clones the whole pipeline.
	*
	* <p>
	* Since {@link Tube}s may form an arbitrary directed graph, someone needs
	* to keep track of isomorphism for a clone to happen correctly. This class
	* serves that role.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:protected @:final private var master2copy(default, null) : java.util.Map<Dynamic, Dynamic>;
	
	/**
	* Invoked by a client of a tube to clone the whole pipeline.
	*
	* <p>
	* {@link Tube}s implementing the {@link Tube#copy(TubeCloner)} method
	* shall use {@link #copy(Tube)} method.
	*
	* @param p
	*      The entry point of a pipeline to be copied. must not be null.
	* @return
	*      The cloned pipeline. Always non-null.
	*/
	@:overload @:public @:static public static function clone(p : com.sun.xml.internal.ws.api.pipe.Tube) : com.sun.xml.internal.ws.api.pipe.Tube;
	
	/**
	* Invoked by a {@link Tube#copy(TubeCloner)} implementation
	* to copy a reference to another pipe.
	*
	* <p>
	* This method is for {@link Tube} implementations, not for users.
	*
	* <p>
	* If the given tube is already copied for this cloning episode,
	* this method simply returns that reference. Otherwise it copies
	* a tube, make a note, and returns a copied tube. This additional
	* step ensures that a graph is cloned isomorphically correctly.
	*
	* <p>
	* (Think about what happens when a graph is A->B, A->C, B->D, and C->D
	* if you don't have this step.)
	*
	* @param t
	*      The tube to be copied.
	* @return
	*      The cloned tube. Always non-null.
	*/
	@:overload @:public public function copy<T : com.sun.xml.internal.ws.api.pipe.Tube>(t : T) : T;
	
	/**
	* This method must be called from within the copy constructor
	* to notify that the copy was created.
	*
	* <p>
	* When your pipe has references to other pipes,
	* it's particularly important to call this method
	* before you start copying the pipes you refer to,
	* or else there's a chance of inifinite loop.
	*/
	@:overload @:public public function add(original : com.sun.xml.internal.ws.api.pipe.Tube, copy : com.sun.xml.internal.ws.api.pipe.Tube) : Void;
	
	
}
