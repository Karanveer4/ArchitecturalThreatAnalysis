/*
 * generated by Xtext 2.17.1
 */
package org.xtext.example.mydsl.formatting2

import com.google.inject.Inject
import eDFDFlowTracking.Asset
import eDFDFlowTracking.EDFD
import org.eclipse.xtext.formatting2.AbstractFormatter2
import org.eclipse.xtext.formatting2.IFormattableDocument
import org.xtext.example.mydsl.services.MyDslGrammarAccess

class MyDslFormatter extends AbstractFormatter2 {
	
	@Inject extension MyDslGrammarAccess

	def dispatch void format(EDFD eDFD, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		for (asset : eDFD.asset) {
			asset.format
		}
		for (trustZone : eDFD.trustzones) {
			trustZone.format
		}
		for (element : eDFD.elements) {
			element.format
		}
	}

	def dispatch void format(Asset asset, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		for (value : asset.value) {
			value.format
		}
	}
	
	// TODO: implement for TrustZone, Flow, Process, DataStore, ExternalEntity
}
