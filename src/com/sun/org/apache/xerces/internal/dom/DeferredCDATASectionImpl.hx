package com.sun.org.apache.xerces.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/**
* XML provides the CDATA markup to allow a region of text in which
* most of the XML delimiter recognition does not take place. This is
* intended to ease the task of quoting XML fragments and other
* programmatic information in a document's text without needing to
* escape these special characters. It's primarily a convenience feature
* for those who are hand-editing XML.
* <P>
* CDATASection is an Extended DOM feature, and is not used in HTML
* contexts.
* <P>
* Within the DOM, CDATASections are treated essentially as Text
* blocks. Their distinct type is retained in order to allow us to
* properly recreate the XML syntax when we write them out.
* <P>
* Reminder: CDATA IS NOT A COMPLETELY GENERAL SOLUTION; it can't
* quote its own end-of-block marking. If you need to write out a
* CDATA that contains the ]]> sequence, it's your responsibility to
* split that string over two successive CDATAs at that time.
* <P>
* CDATA does not participate in Element.normalize() processing.
*
* @xerces.internal
*
* @since  PR-DOM-Level-1-19980818.
*/
extern class DeferredCDATASectionImpl extends com.sun.org.apache.xerces.internal.dom.CDATASectionImpl implements com.sun.org.apache.xerces.internal.dom.DeferredNode
{
	/** Node index. */
	@:protected @:transient private var fNodeIndex : Int;
	
	/** Returns the node index. */
	@:overload @:public public function getNodeIndex() : Int;
	
	/** Synchronizes the data (name and value) for fast nodes. */
	@:overload @:protected override private function synchronizeData() : Void;
	
	
}
