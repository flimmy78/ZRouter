CONVERT_FROM_TAR:=${NEW_CURRENT_PACKING_FILE_NAME}
CONVERT_TO_TAR:=${CURRENT_PACKING_FILE_NAME}

# Let user to override
CONVERTER_TAR?=tar
CONVERTER_TAR_VERBOSE?=-v

${CONVERT_TO_TAR}:		${CONVERT_FROM_TAR}
	@echo -n "========== Convert ${CONVERT_FROM_TAR} to ${CONVERT_TO_TAR}"
	@echo " with ${CONVERTER_TAR} ============"
	${CONVERTER_TAR} -c -C `dirname "${CONVERT_FROM_TAR}"` \
	    ${CONVERTER_TAR_VERBOSE} -f  "${CONVERT_TO_TAR}" \
	    `basename "${CONVERT_FROM_TAR}"`
