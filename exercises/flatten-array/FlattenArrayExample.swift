import Foundation

func flattenArray(list:[Any?])-> [Any] {

    var anyArray = [Any]()

    func extractArrayElements(array:[Any?]) {

        for element in array {

            if let j = element {

                let anyObjectArray = j as? [Any?]

                if let forceUnwrapAnyArray = anyObjectArray {

                    extractArrayElements(array: forceUnwrapAnyArray)

                }

                let integerValue = j as? Int

                if let i = integerValue {

                    anyArray.append(i)
                }

            }
        }

    }

    extractArrayElements(array: list)

    return anyArray

}