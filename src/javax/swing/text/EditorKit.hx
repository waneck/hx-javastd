package javax.swing.text;
/*
* Copyright (c) 1997, 1999, Oracle and/or its affiliates. All rights reserved.
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
extern class EditorKit implements java.lang.Cloneable implements java.io.Serializable
{
	/**
	* Construct an EditorKit.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a copy of the editor kit.  This is implemented
	* to use Object.clone</em>.  If the kit cannot be cloned,
	* null is returned.
	*
	* @return the copy
	*/
	@:overload @:public public function clone() : Dynamic;
	
	/**
	* Called when the kit is being installed into the
	* a JEditorPane.
	*
	* @param c the JEditorPane
	*/
	@:overload @:public public function install(c : javax.swing.JEditorPane) : Void;
	
	/**
	* Called when the kit is being removed from the
	* JEditorPane.  This is used to unregister any
	* listeners that were attached.
	*
	* @param c the JEditorPane
	*/
	@:overload @:public public function deinstall(c : javax.swing.JEditorPane) : Void;
	
	/**
	* Gets the MIME type of the data that this
	* kit represents support for.
	*
	* @return the type
	*/
	@:overload @:public @:abstract public function getContentType() : String;
	
	/**
	* Fetches a factory that is suitable for producing
	* views of any models that are produced by this
	* kit.
	*
	* @return the factory
	*/
	@:overload @:public @:abstract public function getViewFactory() : javax.swing.text.ViewFactory;
	
	/**
	* Fetches the set of commands that can be used
	* on a text component that is using a model and
	* view produced by this kit.
	*
	* @return the set of actions
	*/
	@:overload @:public @:abstract public function getActions() : java.NativeArray<javax.swing.Action>;
	
	/**
	* Fetches a caret that can navigate through views
	* produced by the associated ViewFactory.
	*
	* @return the caret
	*/
	@:overload @:public @:abstract public function createCaret() : javax.swing.text.Caret;
	
	/**
	* Creates an uninitialized text storage model
	* that is appropriate for this type of editor.
	*
	* @return the model
	*/
	@:overload @:public @:abstract public function createDefaultDocument() : javax.swing.text.Document;
	
	/**
	* Inserts content from the given stream which is expected
	* to be in a format appropriate for this kind of content
	* handler.
	*
	* @param in  The stream to read from
	* @param doc The destination for the insertion.
	* @param pos The location in the document to place the
	*   content >= 0.
	* @exception IOException on any I/O error
	* @exception BadLocationException if pos represents an invalid
	*   location within the document.
	*/
	@:overload @:public @:abstract public function read(_in : java.io.InputStream, doc : javax.swing.text.Document, pos : Int) : Void;
	
	/**
	* Writes content from a document to the given stream
	* in a format appropriate for this kind of content handler.
	*
	* @param out  The stream to write to
	* @param doc The source for the write.
	* @param pos The location in the document to fetch the
	*   content from >= 0.
	* @param len The amount to write out >= 0.
	* @exception IOException on any I/O error
	* @exception BadLocationException if pos represents an invalid
	*   location within the document.
	*/
	@:overload @:public @:abstract public function write(out : java.io.OutputStream, doc : javax.swing.text.Document, pos : Int, len : Int) : Void;
	
	/**
	* Inserts content from the given stream which is expected
	* to be in a format appropriate for this kind of content
	* handler.
	* <p>
	* Since actual text editing is unicode based, this would
	* generally be the preferred way to read in the data.
	* Some types of content are stored in an 8-bit form however,
	* and will favor the InputStream.
	*
	* @param in  The stream to read from
	* @param doc The destination for the insertion.
	* @param pos The location in the document to place the
	*   content >= 0.
	* @exception IOException on any I/O error
	* @exception BadLocationException if pos represents an invalid
	*   location within the document.
	*/
	@:overload @:public @:abstract public function read(_in : java.io.Reader, doc : javax.swing.text.Document, pos : Int) : Void;
	
	/**
	* Writes content from a document to the given stream
	* in a format appropriate for this kind of content handler.
	* <p>
	* Since actual text editing is unicode based, this would
	* generally be the preferred way to write the data.
	* Some types of content are stored in an 8-bit form however,
	* and will favor the OutputStream.
	*
	* @param out  The stream to write to
	* @param doc The source for the write.
	* @param pos The location in the document to fetch the
	*   content >= 0.
	* @param len The amount to write out >= 0.
	* @exception IOException on any I/O error
	* @exception BadLocationException if pos represents an invalid
	*   location within the document.
	*/
	@:overload @:public @:abstract public function write(out : java.io.Writer, doc : javax.swing.text.Document, pos : Int, len : Int) : Void;
	
	
}
