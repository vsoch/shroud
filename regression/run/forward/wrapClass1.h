//
// Another package which has been 'wrapped' by shroud
//

#ifndef WRAPCLASS1_H
#define WRAPCLASS1_H

#ifdef __cplusplus
extern "C" {
#endif

// from typesTutorial.h
struct s_TUT_Class1 {
    void *addr;     /* address of C++ memory */
    int idtor;      /* index of destructor */
};
typedef struct s_TUT_Class1 TUT_Class1;

#ifdef __cplusplus
}
#endif

#endif  // WRAPCLASS1_H
  