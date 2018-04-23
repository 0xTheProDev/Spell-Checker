/**
 * dictionary.c
 *
 * Computer Science 50
 * Problem Set 5
 *
 * Implements a dictionary's functionality.
 */

#include <dictionary.h>

typedef struct node {
    bool is_Word;
    struct node *children[MAX_SIZE];
} node;
node *root = NULL;

static unsigned int count = 0;

/**
 * Generate key for each character
 */
static int getkey(char c)
{
    return isalpha(c) ? c - 'a' : MAX_SIZE - 1;
}

/**
 * Deletes a node recursively
 */
static bool del(node *list)
{
    for (int i = 0; i < MAX_SIZE; i++)
    {
        if (list->children[i])
        {
            del(list->children[i]);
        }
    }
    free(list);
    return true;
}

/**
 * Returns true if word is in dictionary else false.
 */
bool check(const char* word)
{
    if (!word)
    {
        return false;
    }

    node *trav = root;
    for (int i = 0; *(word + i) != '\0'; i++)
    {
        int key = getkey(tolower(*(word + i)));
        if (!trav->children[key])
        {
            return false;
        }
        trav = trav->children[key];
    }
    return trav->is_Word;
}

/**
 * Loads dictionary into memory.  Returns true if successful else false.
 */
bool load(const char* dictionary)
{
    FILE *dict = fopen(dictionary, "r");
    if (dict == NULL)
    {
        return false;
    }

    char c;

    root = (node *) malloc(sizeof(node));
    *root = (node){false, {NULL}};

    node *trav = root;
    while ((c = fgetc(dict)) != EOF)
    {
        if (c != EOL)
        {
            int key = getkey(c);
            if (!trav->children[key])
            {
                trav->children[key] = (node *) malloc(sizeof(node));
                *(trav->children[key]) = (node){false, {NULL}};
            }
            trav = trav->children[key];
        }
        else
        {
            trav->is_Word = true;
            trav = root;
            count++;
        }
    }

    fclose(dict);
    return true;
}

/**
 * Returns number of words in dictionary if loaded else 0 if not yet loaded.
 */
unsigned int size(void)
{
    return count;
}

/**
 * Unloads dictionary from memory.  Returns true if successful else false.
 */
bool unload(void)
{
    return del(root);
}
