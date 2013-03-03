package com.sun.org.apache.xml.internal.dtm.ref.sax2dtm;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: SAX2RTFDTM.java,v 1.2.4.1 2005/09/15 08:15:13 suresh_emailid Exp $
*/
extern class SAX2RTFDTM extends com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM
{
	@:overload @:public public function new(mgr : com.sun.org.apache.xml.internal.dtm.DTMManager, source : javax.xml.transform.Source, dtmIdentity : Int, whiteSpaceFilter : com.sun.org.apache.xml.internal.dtm.DTMWSFilter, xstringfactory : com.sun.org.apache.xml.internal.utils.XMLStringFactory, doIndexing : Bool) : Void;
	
	/**
	* Given a DTM, find the owning document node. In the case of
	* SAX2RTFDTM, which may contain multiple documents, this returns
	* the <b>most recently started</b> document, or null if the DTM is
	* empty or no document is currently under construction.
	*
	* %REVIEW% Should we continue to report the most recent after
	* construction has ended? I think not, given that it may have been
	* tail-pruned.
	*
	*  @return int Node handle of Document node, or null if this DTM does not
	*  contain an "active" document.
	* */
	@:overload @:public override public function getDocument() : Int;
	
	/**
	* Given a node handle, find the owning document node, using DTM semantics
	* (Document owns itself) rather than DOM semantics (Document has no owner).
	*
	* (I'm counting on the fact that getOwnerDocument() is implemented on top
	* of this call, in the superclass, to avoid having to rewrite that one.
	* Be careful if that code changes!)
	*
	* @param nodeHandle the id of the node.
	* @return int Node handle of owning document
	*/
	@:overload @:public override public function getDocumentRoot(nodeHandle : Int) : Int;
	
	/**
	* Given a node identifier, find the owning document node.  Unlike the DOM,
	* this considers the owningDocument of a Document to be itself. Note that
	* in shared DTMs this may not be zero.
	*
	* @param nodeIdentifier the id of the starting node.
	* @return int Node identifier of the root of this DTM tree
	*/
	@:overload @:protected private function _documentRoot(nodeIdentifier : Int) : Int;
	
	/**
	* Receive notification of the beginning of a new RTF document.
	*
	* %REVIEW% Y'know, this isn't all that much of a deoptimization. We
	* might want to consider folding the start/endDocument changes back
	* into the main SAX2DTM so we don't have to expose so many fields
	* (even as Protected) and carry the additional code.
	*
	* @throws SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ContentHandler#startDocument
	* */
	@:overload @:public override public function startDocument() : Void;
	
	/**
	* Receive notification of the end of the document.
	*
	* %REVIEW% Y'know, this isn't all that much of a deoptimization. We
	* might want to consider folding the start/endDocument changes back
	* into the main SAX2DTM so we don't have to expose so many fields
	* (even as Protected).
	*
	* @throws SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ContentHandler#endDocument
	* */
	@:overload @:public override public function endDocument() : Void;
	
	/** "Tail-pruning" support for RTFs.
	*
	* This function pushes information about the current size of the
	* DTM's data structures onto a stack, for use by popRewindMark()
	* (which see).
	*
	* %REVIEW% I have no idea how to rewind m_elemIndexes. However,
	* RTFs will not be indexed, so I can simply panic if that case
	* arises. Hey, it works...
	* */
	@:overload @:public public function pushRewindMark() : Void;
	
	/** "Tail-pruning" support for RTFs.
	*
	* This function pops the information previously saved by
	* pushRewindMark (which see) and uses it to discard all nodes added
	* to the DTM after that time. We expect that this will allow us to
	* reuse storage more effectively.
	*
	* This is _not_ intended to be called while a document is still being
	* constructed -- only between endDocument and the next startDocument
	*
	* %REVIEW% WARNING: This is the first use of some of the truncation
	* methods.  If Xalan blows up after this is called, that's a likely
	* place to check.
	*
	* %REVIEW% Our original design for DTMs permitted them to share
	* string pools.  If there any risk that this might be happening, we
	* can _not_ rewind and recover the string storage. One solution
	* might to assert that DTMs used for RTFs Must Not take advantage
	* of that feature, but this seems excessively fragile. Another, much
	* less attractive, would be to just let them leak... Nah.
	*
	* @return true if and only if the pop completely emptied the
	* RTF. That response is used when determining how to unspool
	* RTF-started-while-RTF-open situations.
	* */
	@:overload @:public public function popRewindMark() : Bool;
	
	/** @return true if a DTM tree is currently under construction.
	* */
	@:overload @:public public function isTreeIncomplete() : Bool;
	
	
}
