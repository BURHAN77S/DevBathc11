import { createElement } from 'lwc';
import AssignmentRecordViewFormContact from 'c/assignmentRecordViewFormContact';

describe('c-assignment-record-view-form-contact', () => {
    afterEach(() => {
        // The jsdom instance is shared across test cases in a single file so reset the DOM
        while (document.body.firstChild) {
            document.body.removeChild(document.body.firstChild);
        }
    });

    it('TODO: test case generated by CLI command, please fill in test logic', () => {
        // Arrange
        const element = createElement('c-assignment-record-view-form-contact', {
            is: AssignmentRecordViewFormContact
        });

        // Act
        document.body.appendChild(element);

        // Assert
        // const div = element.shadowRoot.querySelector('div');
        expect(1).toBe(1);
    });
});