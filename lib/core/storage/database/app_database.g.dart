// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $DocTypesTable extends DocTypes
    with TableInfo<$DocTypesTable, DocTypeEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DocTypesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _moduleMeta = const VerificationMeta('module');
  @override
  late final GeneratedColumn<String> module = GeneratedColumn<String>(
    'module',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isSubmittableMeta = const VerificationMeta(
    'isSubmittable',
  );
  @override
  late final GeneratedColumn<int> isSubmittable = GeneratedColumn<int>(
    'is_submittable',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _istableMeta = const VerificationMeta(
    'istable',
  );
  @override
  late final GeneratedColumn<int> istable = GeneratedColumn<int>(
    'istable',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isSingleMeta = const VerificationMeta(
    'isSingle',
  );
  @override
  late final GeneratedColumn<int> isSingle = GeneratedColumn<int>(
    'is_single',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _customMeta = const VerificationMeta('custom');
  @override
  late final GeneratedColumn<int> custom = GeneratedColumn<int>(
    'custom',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    name,
    module,
    isSubmittable,
    istable,
    isSingle,
    custom,
    description,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'doc_types';
  @override
  VerificationContext validateIntegrity(
    Insertable<DocTypeEntity> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('module')) {
      context.handle(
        _moduleMeta,
        module.isAcceptableOrUnknown(data['module']!, _moduleMeta),
      );
    } else if (isInserting) {
      context.missing(_moduleMeta);
    }
    if (data.containsKey('is_submittable')) {
      context.handle(
        _isSubmittableMeta,
        isSubmittable.isAcceptableOrUnknown(
          data['is_submittable']!,
          _isSubmittableMeta,
        ),
      );
    }
    if (data.containsKey('istable')) {
      context.handle(
        _istableMeta,
        istable.isAcceptableOrUnknown(data['istable']!, _istableMeta),
      );
    }
    if (data.containsKey('is_single')) {
      context.handle(
        _isSingleMeta,
        isSingle.isAcceptableOrUnknown(data['is_single']!, _isSingleMeta),
      );
    }
    if (data.containsKey('custom')) {
      context.handle(
        _customMeta,
        custom.isAcceptableOrUnknown(data['custom']!, _customMeta),
      );
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {name};
  @override
  DocTypeEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DocTypeEntity(
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      module: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}module'],
      )!,
      isSubmittable: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}is_submittable'],
      ),
      istable: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}istable'],
      ),
      isSingle: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}is_single'],
      ),
      custom: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}custom'],
      ),
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
    );
  }

  @override
  $DocTypesTable createAlias(String alias) {
    return $DocTypesTable(attachedDatabase, alias);
  }
}

class DocTypeEntity extends DataClass implements Insertable<DocTypeEntity> {
  final String name;
  final String module;
  final int? isSubmittable;
  final int? istable;
  final int? isSingle;
  final int? custom;
  final String? description;
  const DocTypeEntity({
    required this.name,
    required this.module,
    this.isSubmittable,
    this.istable,
    this.isSingle,
    this.custom,
    this.description,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['name'] = Variable<String>(name);
    map['module'] = Variable<String>(module);
    if (!nullToAbsent || isSubmittable != null) {
      map['is_submittable'] = Variable<int>(isSubmittable);
    }
    if (!nullToAbsent || istable != null) {
      map['istable'] = Variable<int>(istable);
    }
    if (!nullToAbsent || isSingle != null) {
      map['is_single'] = Variable<int>(isSingle);
    }
    if (!nullToAbsent || custom != null) {
      map['custom'] = Variable<int>(custom);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    return map;
  }

  DocTypesCompanion toCompanion(bool nullToAbsent) {
    return DocTypesCompanion(
      name: Value(name),
      module: Value(module),
      isSubmittable: isSubmittable == null && nullToAbsent
          ? const Value.absent()
          : Value(isSubmittable),
      istable: istable == null && nullToAbsent
          ? const Value.absent()
          : Value(istable),
      isSingle: isSingle == null && nullToAbsent
          ? const Value.absent()
          : Value(isSingle),
      custom: custom == null && nullToAbsent
          ? const Value.absent()
          : Value(custom),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  factory DocTypeEntity.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DocTypeEntity(
      name: serializer.fromJson<String>(json['name']),
      module: serializer.fromJson<String>(json['module']),
      isSubmittable: serializer.fromJson<int?>(json['isSubmittable']),
      istable: serializer.fromJson<int?>(json['istable']),
      isSingle: serializer.fromJson<int?>(json['isSingle']),
      custom: serializer.fromJson<int?>(json['custom']),
      description: serializer.fromJson<String?>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'name': serializer.toJson<String>(name),
      'module': serializer.toJson<String>(module),
      'isSubmittable': serializer.toJson<int?>(isSubmittable),
      'istable': serializer.toJson<int?>(istable),
      'isSingle': serializer.toJson<int?>(isSingle),
      'custom': serializer.toJson<int?>(custom),
      'description': serializer.toJson<String?>(description),
    };
  }

  DocTypeEntity copyWith({
    String? name,
    String? module,
    Value<int?> isSubmittable = const Value.absent(),
    Value<int?> istable = const Value.absent(),
    Value<int?> isSingle = const Value.absent(),
    Value<int?> custom = const Value.absent(),
    Value<String?> description = const Value.absent(),
  }) => DocTypeEntity(
    name: name ?? this.name,
    module: module ?? this.module,
    isSubmittable: isSubmittable.present
        ? isSubmittable.value
        : this.isSubmittable,
    istable: istable.present ? istable.value : this.istable,
    isSingle: isSingle.present ? isSingle.value : this.isSingle,
    custom: custom.present ? custom.value : this.custom,
    description: description.present ? description.value : this.description,
  );
  DocTypeEntity copyWithCompanion(DocTypesCompanion data) {
    return DocTypeEntity(
      name: data.name.present ? data.name.value : this.name,
      module: data.module.present ? data.module.value : this.module,
      isSubmittable: data.isSubmittable.present
          ? data.isSubmittable.value
          : this.isSubmittable,
      istable: data.istable.present ? data.istable.value : this.istable,
      isSingle: data.isSingle.present ? data.isSingle.value : this.isSingle,
      custom: data.custom.present ? data.custom.value : this.custom,
      description: data.description.present
          ? data.description.value
          : this.description,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DocTypeEntity(')
          ..write('name: $name, ')
          ..write('module: $module, ')
          ..write('isSubmittable: $isSubmittable, ')
          ..write('istable: $istable, ')
          ..write('isSingle: $isSingle, ')
          ..write('custom: $custom, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    name,
    module,
    isSubmittable,
    istable,
    isSingle,
    custom,
    description,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DocTypeEntity &&
          other.name == this.name &&
          other.module == this.module &&
          other.isSubmittable == this.isSubmittable &&
          other.istable == this.istable &&
          other.isSingle == this.isSingle &&
          other.custom == this.custom &&
          other.description == this.description);
}

class DocTypesCompanion extends UpdateCompanion<DocTypeEntity> {
  final Value<String> name;
  final Value<String> module;
  final Value<int?> isSubmittable;
  final Value<int?> istable;
  final Value<int?> isSingle;
  final Value<int?> custom;
  final Value<String?> description;
  final Value<int> rowid;
  const DocTypesCompanion({
    this.name = const Value.absent(),
    this.module = const Value.absent(),
    this.isSubmittable = const Value.absent(),
    this.istable = const Value.absent(),
    this.isSingle = const Value.absent(),
    this.custom = const Value.absent(),
    this.description = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DocTypesCompanion.insert({
    required String name,
    required String module,
    this.isSubmittable = const Value.absent(),
    this.istable = const Value.absent(),
    this.isSingle = const Value.absent(),
    this.custom = const Value.absent(),
    this.description = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : name = Value(name),
       module = Value(module);
  static Insertable<DocTypeEntity> createCustom({
    Expression<String>? name,
    Expression<String>? module,
    Expression<int>? isSubmittable,
    Expression<int>? istable,
    Expression<int>? isSingle,
    Expression<int>? custom,
    Expression<String>? description,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (name != null) 'name': name,
      if (module != null) 'module': module,
      if (isSubmittable != null) 'is_submittable': isSubmittable,
      if (istable != null) 'istable': istable,
      if (isSingle != null) 'is_single': isSingle,
      if (custom != null) 'custom': custom,
      if (description != null) 'description': description,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DocTypesCompanion copyWith({
    Value<String>? name,
    Value<String>? module,
    Value<int?>? isSubmittable,
    Value<int?>? istable,
    Value<int?>? isSingle,
    Value<int?>? custom,
    Value<String?>? description,
    Value<int>? rowid,
  }) {
    return DocTypesCompanion(
      name: name ?? this.name,
      module: module ?? this.module,
      isSubmittable: isSubmittable ?? this.isSubmittable,
      istable: istable ?? this.istable,
      isSingle: isSingle ?? this.isSingle,
      custom: custom ?? this.custom,
      description: description ?? this.description,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (module.present) {
      map['module'] = Variable<String>(module.value);
    }
    if (isSubmittable.present) {
      map['is_submittable'] = Variable<int>(isSubmittable.value);
    }
    if (istable.present) {
      map['istable'] = Variable<int>(istable.value);
    }
    if (isSingle.present) {
      map['is_single'] = Variable<int>(isSingle.value);
    }
    if (custom.present) {
      map['custom'] = Variable<int>(custom.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DocTypesCompanion(')
          ..write('name: $name, ')
          ..write('module: $module, ')
          ..write('isSubmittable: $isSubmittable, ')
          ..write('istable: $istable, ')
          ..write('isSingle: $isSingle, ')
          ..write('custom: $custom, ')
          ..write('description: $description, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DocFieldsTable extends DocFields
    with TableInfo<$DocFieldsTable, DocFieldEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DocFieldsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _fieldnameMeta = const VerificationMeta(
    'fieldname',
  );
  @override
  late final GeneratedColumn<String> fieldname = GeneratedColumn<String>(
    'fieldname',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _parentMeta = const VerificationMeta('parent');
  @override
  late final GeneratedColumn<String> parent = GeneratedColumn<String>(
    'parent',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES doc_types (name)',
    ),
  );
  static const VerificationMeta _fieldtypeMeta = const VerificationMeta(
    'fieldtype',
  );
  @override
  late final GeneratedColumn<String> fieldtype = GeneratedColumn<String>(
    'fieldtype',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
    'label',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _reqdMeta = const VerificationMeta('reqd');
  @override
  late final GeneratedColumn<int> reqd = GeneratedColumn<int>(
    'reqd',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _hiddenMeta = const VerificationMeta('hidden');
  @override
  late final GeneratedColumn<int> hidden = GeneratedColumn<int>(
    'hidden',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _readOnlyMeta = const VerificationMeta(
    'readOnly',
  );
  @override
  late final GeneratedColumn<int> readOnly = GeneratedColumn<int>(
    'read_only',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _optionsMeta = const VerificationMeta(
    'options',
  );
  @override
  late final GeneratedColumn<String> options = GeneratedColumn<String>(
    'options',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _dependsOnMeta = const VerificationMeta(
    'dependsOn',
  );
  @override
  late final GeneratedColumn<String> dependsOn = GeneratedColumn<String>(
    'depends_on',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    fieldname,
    parent,
    fieldtype,
    label,
    reqd,
    hidden,
    readOnly,
    options,
    dependsOn,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'doc_fields';
  @override
  VerificationContext validateIntegrity(
    Insertable<DocFieldEntity> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('fieldname')) {
      context.handle(
        _fieldnameMeta,
        fieldname.isAcceptableOrUnknown(data['fieldname']!, _fieldnameMeta),
      );
    } else if (isInserting) {
      context.missing(_fieldnameMeta);
    }
    if (data.containsKey('parent')) {
      context.handle(
        _parentMeta,
        parent.isAcceptableOrUnknown(data['parent']!, _parentMeta),
      );
    } else if (isInserting) {
      context.missing(_parentMeta);
    }
    if (data.containsKey('fieldtype')) {
      context.handle(
        _fieldtypeMeta,
        fieldtype.isAcceptableOrUnknown(data['fieldtype']!, _fieldtypeMeta),
      );
    } else if (isInserting) {
      context.missing(_fieldtypeMeta);
    }
    if (data.containsKey('label')) {
      context.handle(
        _labelMeta,
        label.isAcceptableOrUnknown(data['label']!, _labelMeta),
      );
    } else if (isInserting) {
      context.missing(_labelMeta);
    }
    if (data.containsKey('reqd')) {
      context.handle(
        _reqdMeta,
        reqd.isAcceptableOrUnknown(data['reqd']!, _reqdMeta),
      );
    }
    if (data.containsKey('hidden')) {
      context.handle(
        _hiddenMeta,
        hidden.isAcceptableOrUnknown(data['hidden']!, _hiddenMeta),
      );
    }
    if (data.containsKey('read_only')) {
      context.handle(
        _readOnlyMeta,
        readOnly.isAcceptableOrUnknown(data['read_only']!, _readOnlyMeta),
      );
    }
    if (data.containsKey('options')) {
      context.handle(
        _optionsMeta,
        options.isAcceptableOrUnknown(data['options']!, _optionsMeta),
      );
    }
    if (data.containsKey('depends_on')) {
      context.handle(
        _dependsOnMeta,
        dependsOn.isAcceptableOrUnknown(data['depends_on']!, _dependsOnMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {parent, fieldname};
  @override
  DocFieldEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DocFieldEntity(
      fieldname: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}fieldname'],
      )!,
      parent: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}parent'],
      )!,
      fieldtype: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}fieldtype'],
      )!,
      label: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}label'],
      )!,
      reqd: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}reqd'],
      ),
      hidden: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}hidden'],
      ),
      readOnly: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}read_only'],
      ),
      options: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}options'],
      ),
      dependsOn: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}depends_on'],
      ),
    );
  }

  @override
  $DocFieldsTable createAlias(String alias) {
    return $DocFieldsTable(attachedDatabase, alias);
  }
}

class DocFieldEntity extends DataClass implements Insertable<DocFieldEntity> {
  final String fieldname;
  final String parent;
  final String fieldtype;
  final String label;
  final int? reqd;
  final int? hidden;
  final int? readOnly;
  final String? options;
  final String? dependsOn;
  const DocFieldEntity({
    required this.fieldname,
    required this.parent,
    required this.fieldtype,
    required this.label,
    this.reqd,
    this.hidden,
    this.readOnly,
    this.options,
    this.dependsOn,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['fieldname'] = Variable<String>(fieldname);
    map['parent'] = Variable<String>(parent);
    map['fieldtype'] = Variable<String>(fieldtype);
    map['label'] = Variable<String>(label);
    if (!nullToAbsent || reqd != null) {
      map['reqd'] = Variable<int>(reqd);
    }
    if (!nullToAbsent || hidden != null) {
      map['hidden'] = Variable<int>(hidden);
    }
    if (!nullToAbsent || readOnly != null) {
      map['read_only'] = Variable<int>(readOnly);
    }
    if (!nullToAbsent || options != null) {
      map['options'] = Variable<String>(options);
    }
    if (!nullToAbsent || dependsOn != null) {
      map['depends_on'] = Variable<String>(dependsOn);
    }
    return map;
  }

  DocFieldsCompanion toCompanion(bool nullToAbsent) {
    return DocFieldsCompanion(
      fieldname: Value(fieldname),
      parent: Value(parent),
      fieldtype: Value(fieldtype),
      label: Value(label),
      reqd: reqd == null && nullToAbsent ? const Value.absent() : Value(reqd),
      hidden: hidden == null && nullToAbsent
          ? const Value.absent()
          : Value(hidden),
      readOnly: readOnly == null && nullToAbsent
          ? const Value.absent()
          : Value(readOnly),
      options: options == null && nullToAbsent
          ? const Value.absent()
          : Value(options),
      dependsOn: dependsOn == null && nullToAbsent
          ? const Value.absent()
          : Value(dependsOn),
    );
  }

  factory DocFieldEntity.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DocFieldEntity(
      fieldname: serializer.fromJson<String>(json['fieldname']),
      parent: serializer.fromJson<String>(json['parent']),
      fieldtype: serializer.fromJson<String>(json['fieldtype']),
      label: serializer.fromJson<String>(json['label']),
      reqd: serializer.fromJson<int?>(json['reqd']),
      hidden: serializer.fromJson<int?>(json['hidden']),
      readOnly: serializer.fromJson<int?>(json['readOnly']),
      options: serializer.fromJson<String?>(json['options']),
      dependsOn: serializer.fromJson<String?>(json['dependsOn']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'fieldname': serializer.toJson<String>(fieldname),
      'parent': serializer.toJson<String>(parent),
      'fieldtype': serializer.toJson<String>(fieldtype),
      'label': serializer.toJson<String>(label),
      'reqd': serializer.toJson<int?>(reqd),
      'hidden': serializer.toJson<int?>(hidden),
      'readOnly': serializer.toJson<int?>(readOnly),
      'options': serializer.toJson<String?>(options),
      'dependsOn': serializer.toJson<String?>(dependsOn),
    };
  }

  DocFieldEntity copyWith({
    String? fieldname,
    String? parent,
    String? fieldtype,
    String? label,
    Value<int?> reqd = const Value.absent(),
    Value<int?> hidden = const Value.absent(),
    Value<int?> readOnly = const Value.absent(),
    Value<String?> options = const Value.absent(),
    Value<String?> dependsOn = const Value.absent(),
  }) => DocFieldEntity(
    fieldname: fieldname ?? this.fieldname,
    parent: parent ?? this.parent,
    fieldtype: fieldtype ?? this.fieldtype,
    label: label ?? this.label,
    reqd: reqd.present ? reqd.value : this.reqd,
    hidden: hidden.present ? hidden.value : this.hidden,
    readOnly: readOnly.present ? readOnly.value : this.readOnly,
    options: options.present ? options.value : this.options,
    dependsOn: dependsOn.present ? dependsOn.value : this.dependsOn,
  );
  DocFieldEntity copyWithCompanion(DocFieldsCompanion data) {
    return DocFieldEntity(
      fieldname: data.fieldname.present ? data.fieldname.value : this.fieldname,
      parent: data.parent.present ? data.parent.value : this.parent,
      fieldtype: data.fieldtype.present ? data.fieldtype.value : this.fieldtype,
      label: data.label.present ? data.label.value : this.label,
      reqd: data.reqd.present ? data.reqd.value : this.reqd,
      hidden: data.hidden.present ? data.hidden.value : this.hidden,
      readOnly: data.readOnly.present ? data.readOnly.value : this.readOnly,
      options: data.options.present ? data.options.value : this.options,
      dependsOn: data.dependsOn.present ? data.dependsOn.value : this.dependsOn,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DocFieldEntity(')
          ..write('fieldname: $fieldname, ')
          ..write('parent: $parent, ')
          ..write('fieldtype: $fieldtype, ')
          ..write('label: $label, ')
          ..write('reqd: $reqd, ')
          ..write('hidden: $hidden, ')
          ..write('readOnly: $readOnly, ')
          ..write('options: $options, ')
          ..write('dependsOn: $dependsOn')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    fieldname,
    parent,
    fieldtype,
    label,
    reqd,
    hidden,
    readOnly,
    options,
    dependsOn,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DocFieldEntity &&
          other.fieldname == this.fieldname &&
          other.parent == this.parent &&
          other.fieldtype == this.fieldtype &&
          other.label == this.label &&
          other.reqd == this.reqd &&
          other.hidden == this.hidden &&
          other.readOnly == this.readOnly &&
          other.options == this.options &&
          other.dependsOn == this.dependsOn);
}

class DocFieldsCompanion extends UpdateCompanion<DocFieldEntity> {
  final Value<String> fieldname;
  final Value<String> parent;
  final Value<String> fieldtype;
  final Value<String> label;
  final Value<int?> reqd;
  final Value<int?> hidden;
  final Value<int?> readOnly;
  final Value<String?> options;
  final Value<String?> dependsOn;
  final Value<int> rowid;
  const DocFieldsCompanion({
    this.fieldname = const Value.absent(),
    this.parent = const Value.absent(),
    this.fieldtype = const Value.absent(),
    this.label = const Value.absent(),
    this.reqd = const Value.absent(),
    this.hidden = const Value.absent(),
    this.readOnly = const Value.absent(),
    this.options = const Value.absent(),
    this.dependsOn = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DocFieldsCompanion.insert({
    required String fieldname,
    required String parent,
    required String fieldtype,
    required String label,
    this.reqd = const Value.absent(),
    this.hidden = const Value.absent(),
    this.readOnly = const Value.absent(),
    this.options = const Value.absent(),
    this.dependsOn = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : fieldname = Value(fieldname),
       parent = Value(parent),
       fieldtype = Value(fieldtype),
       label = Value(label);
  static Insertable<DocFieldEntity> custom({
    Expression<String>? fieldname,
    Expression<String>? parent,
    Expression<String>? fieldtype,
    Expression<String>? label,
    Expression<int>? reqd,
    Expression<int>? hidden,
    Expression<int>? readOnly,
    Expression<String>? options,
    Expression<String>? dependsOn,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (fieldname != null) 'fieldname': fieldname,
      if (parent != null) 'parent': parent,
      if (fieldtype != null) 'fieldtype': fieldtype,
      if (label != null) 'label': label,
      if (reqd != null) 'reqd': reqd,
      if (hidden != null) 'hidden': hidden,
      if (readOnly != null) 'read_only': readOnly,
      if (options != null) 'options': options,
      if (dependsOn != null) 'depends_on': dependsOn,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DocFieldsCompanion copyWith({
    Value<String>? fieldname,
    Value<String>? parent,
    Value<String>? fieldtype,
    Value<String>? label,
    Value<int?>? reqd,
    Value<int?>? hidden,
    Value<int?>? readOnly,
    Value<String?>? options,
    Value<String?>? dependsOn,
    Value<int>? rowid,
  }) {
    return DocFieldsCompanion(
      fieldname: fieldname ?? this.fieldname,
      parent: parent ?? this.parent,
      fieldtype: fieldtype ?? this.fieldtype,
      label: label ?? this.label,
      reqd: reqd ?? this.reqd,
      hidden: hidden ?? this.hidden,
      readOnly: readOnly ?? this.readOnly,
      options: options ?? this.options,
      dependsOn: dependsOn ?? this.dependsOn,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (fieldname.present) {
      map['fieldname'] = Variable<String>(fieldname.value);
    }
    if (parent.present) {
      map['parent'] = Variable<String>(parent.value);
    }
    if (fieldtype.present) {
      map['fieldtype'] = Variable<String>(fieldtype.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (reqd.present) {
      map['reqd'] = Variable<int>(reqd.value);
    }
    if (hidden.present) {
      map['hidden'] = Variable<int>(hidden.value);
    }
    if (readOnly.present) {
      map['read_only'] = Variable<int>(readOnly.value);
    }
    if (options.present) {
      map['options'] = Variable<String>(options.value);
    }
    if (dependsOn.present) {
      map['depends_on'] = Variable<String>(dependsOn.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DocFieldsCompanion(')
          ..write('fieldname: $fieldname, ')
          ..write('parent: $parent, ')
          ..write('fieldtype: $fieldtype, ')
          ..write('label: $label, ')
          ..write('reqd: $reqd, ')
          ..write('hidden: $hidden, ')
          ..write('readOnly: $readOnly, ')
          ..write('options: $options, ')
          ..write('dependsOn: $dependsOn, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SchemaVersionsTable extends SchemaVersions
    with TableInfo<$SchemaVersionsTable, SchemaVersionEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SchemaVersionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _docTypeNameMeta = const VerificationMeta(
    'docTypeName',
  );
  @override
  late final GeneratedColumn<String> docTypeName = GeneratedColumn<String>(
    'doc_type_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES doc_types (name)',
    ),
  );
  static const VerificationMeta _schemaHashMeta = const VerificationMeta(
    'schemaHash',
  );
  @override
  late final GeneratedColumn<String> schemaHash = GeneratedColumn<String>(
    'schema_hash',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastSyncMeta = const VerificationMeta(
    'lastSync',
  );
  @override
  late final GeneratedColumn<DateTime> lastSync = GeneratedColumn<DateTime>(
    'last_sync',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [docTypeName, schemaHash, lastSync];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'schema_versions';
  @override
  VerificationContext validateIntegrity(
    Insertable<SchemaVersionEntity> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('doc_type_name')) {
      context.handle(
        _docTypeNameMeta,
        docTypeName.isAcceptableOrUnknown(
          data['doc_type_name']!,
          _docTypeNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_docTypeNameMeta);
    }
    if (data.containsKey('schema_hash')) {
      context.handle(
        _schemaHashMeta,
        schemaHash.isAcceptableOrUnknown(data['schema_hash']!, _schemaHashMeta),
      );
    } else if (isInserting) {
      context.missing(_schemaHashMeta);
    }
    if (data.containsKey('last_sync')) {
      context.handle(
        _lastSyncMeta,
        lastSync.isAcceptableOrUnknown(data['last_sync']!, _lastSyncMeta),
      );
    } else if (isInserting) {
      context.missing(_lastSyncMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {docTypeName};
  @override
  SchemaVersionEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SchemaVersionEntity(
      docTypeName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}doc_type_name'],
      )!,
      schemaHash: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}schema_hash'],
      )!,
      lastSync: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_sync'],
      )!,
    );
  }

  @override
  $SchemaVersionsTable createAlias(String alias) {
    return $SchemaVersionsTable(attachedDatabase, alias);
  }
}

class SchemaVersionEntity extends DataClass
    implements Insertable<SchemaVersionEntity> {
  final String docTypeName;
  final String schemaHash;
  final DateTime lastSync;
  const SchemaVersionEntity({
    required this.docTypeName,
    required this.schemaHash,
    required this.lastSync,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['doc_type_name'] = Variable<String>(docTypeName);
    map['schema_hash'] = Variable<String>(schemaHash);
    map['last_sync'] = Variable<DateTime>(lastSync);
    return map;
  }

  SchemaVersionsCompanion toCompanion(bool nullToAbsent) {
    return SchemaVersionsCompanion(
      docTypeName: Value(docTypeName),
      schemaHash: Value(schemaHash),
      lastSync: Value(lastSync),
    );
  }

  factory SchemaVersionEntity.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SchemaVersionEntity(
      docTypeName: serializer.fromJson<String>(json['docTypeName']),
      schemaHash: serializer.fromJson<String>(json['schemaHash']),
      lastSync: serializer.fromJson<DateTime>(json['lastSync']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'docTypeName': serializer.toJson<String>(docTypeName),
      'schemaHash': serializer.toJson<String>(schemaHash),
      'lastSync': serializer.toJson<DateTime>(lastSync),
    };
  }

  SchemaVersionEntity copyWith({
    String? docTypeName,
    String? schemaHash,
    DateTime? lastSync,
  }) => SchemaVersionEntity(
    docTypeName: docTypeName ?? this.docTypeName,
    schemaHash: schemaHash ?? this.schemaHash,
    lastSync: lastSync ?? this.lastSync,
  );
  SchemaVersionEntity copyWithCompanion(SchemaVersionsCompanion data) {
    return SchemaVersionEntity(
      docTypeName: data.docTypeName.present
          ? data.docTypeName.value
          : this.docTypeName,
      schemaHash: data.schemaHash.present
          ? data.schemaHash.value
          : this.schemaHash,
      lastSync: data.lastSync.present ? data.lastSync.value : this.lastSync,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SchemaVersionEntity(')
          ..write('docTypeName: $docTypeName, ')
          ..write('schemaHash: $schemaHash, ')
          ..write('lastSync: $lastSync')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(docTypeName, schemaHash, lastSync);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SchemaVersionEntity &&
          other.docTypeName == this.docTypeName &&
          other.schemaHash == this.schemaHash &&
          other.lastSync == this.lastSync);
}

class SchemaVersionsCompanion extends UpdateCompanion<SchemaVersionEntity> {
  final Value<String> docTypeName;
  final Value<String> schemaHash;
  final Value<DateTime> lastSync;
  final Value<int> rowid;
  const SchemaVersionsCompanion({
    this.docTypeName = const Value.absent(),
    this.schemaHash = const Value.absent(),
    this.lastSync = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SchemaVersionsCompanion.insert({
    required String docTypeName,
    required String schemaHash,
    required DateTime lastSync,
    this.rowid = const Value.absent(),
  }) : docTypeName = Value(docTypeName),
       schemaHash = Value(schemaHash),
       lastSync = Value(lastSync);
  static Insertable<SchemaVersionEntity> custom({
    Expression<String>? docTypeName,
    Expression<String>? schemaHash,
    Expression<DateTime>? lastSync,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (docTypeName != null) 'doc_type_name': docTypeName,
      if (schemaHash != null) 'schema_hash': schemaHash,
      if (lastSync != null) 'last_sync': lastSync,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SchemaVersionsCompanion copyWith({
    Value<String>? docTypeName,
    Value<String>? schemaHash,
    Value<DateTime>? lastSync,
    Value<int>? rowid,
  }) {
    return SchemaVersionsCompanion(
      docTypeName: docTypeName ?? this.docTypeName,
      schemaHash: schemaHash ?? this.schemaHash,
      lastSync: lastSync ?? this.lastSync,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (docTypeName.present) {
      map['doc_type_name'] = Variable<String>(docTypeName.value);
    }
    if (schemaHash.present) {
      map['schema_hash'] = Variable<String>(schemaHash.value);
    }
    if (lastSync.present) {
      map['last_sync'] = Variable<DateTime>(lastSync.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SchemaVersionsCompanion(')
          ..write('docTypeName: $docTypeName, ')
          ..write('schemaHash: $schemaHash, ')
          ..write('lastSync: $lastSync, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SyncQueueTable extends SyncQueue
    with TableInfo<$SyncQueueTable, SyncQueueEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncQueueTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _docTypeMeta = const VerificationMeta(
    'docType',
  );
  @override
  late final GeneratedColumn<String> docType = GeneratedColumn<String>(
    'doc_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _docNameMeta = const VerificationMeta(
    'docName',
  );
  @override
  late final GeneratedColumn<String> docName = GeneratedColumn<String>(
    'doc_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _actionMeta = const VerificationMeta('action');
  @override
  late final GeneratedColumn<String> action = GeneratedColumn<String>(
    'action',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _payloadMeta = const VerificationMeta(
    'payload',
  );
  @override
  late final GeneratedColumn<String> payload = GeneratedColumn<String>(
    'payload',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _timestampMeta = const VerificationMeta(
    'timestamp',
  );
  @override
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
    'timestamp',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _retryCountMeta = const VerificationMeta(
    'retryCount',
  );
  @override
  late final GeneratedColumn<int> retryCount = GeneratedColumn<int>(
    'retry_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    docType,
    docName,
    action,
    payload,
    timestamp,
    retryCount,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_queue';
  @override
  VerificationContext validateIntegrity(
    Insertable<SyncQueueEntity> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('doc_type')) {
      context.handle(
        _docTypeMeta,
        docType.isAcceptableOrUnknown(data['doc_type']!, _docTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_docTypeMeta);
    }
    if (data.containsKey('doc_name')) {
      context.handle(
        _docNameMeta,
        docName.isAcceptableOrUnknown(data['doc_name']!, _docNameMeta),
      );
    }
    if (data.containsKey('action')) {
      context.handle(
        _actionMeta,
        action.isAcceptableOrUnknown(data['action']!, _actionMeta),
      );
    } else if (isInserting) {
      context.missing(_actionMeta);
    }
    if (data.containsKey('payload')) {
      context.handle(
        _payloadMeta,
        payload.isAcceptableOrUnknown(data['payload']!, _payloadMeta),
      );
    } else if (isInserting) {
      context.missing(_payloadMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(
        _timestampMeta,
        timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta),
      );
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('retry_count')) {
      context.handle(
        _retryCountMeta,
        retryCount.isAcceptableOrUnknown(data['retry_count']!, _retryCountMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SyncQueueEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SyncQueueEntity(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      docType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}doc_type'],
      )!,
      docName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}doc_name'],
      ),
      action: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}action'],
      )!,
      payload: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payload'],
      )!,
      timestamp: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}timestamp'],
      )!,
      retryCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}retry_count'],
      )!,
    );
  }

  @override
  $SyncQueueTable createAlias(String alias) {
    return $SyncQueueTable(attachedDatabase, alias);
  }
}

class SyncQueueEntity extends DataClass implements Insertable<SyncQueueEntity> {
  final int id;
  final String docType;
  final String? docName;
  final String action;
  final String payload;
  final DateTime timestamp;
  final int retryCount;
  const SyncQueueEntity({
    required this.id,
    required this.docType,
    this.docName,
    required this.action,
    required this.payload,
    required this.timestamp,
    required this.retryCount,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['doc_type'] = Variable<String>(docType);
    if (!nullToAbsent || docName != null) {
      map['doc_name'] = Variable<String>(docName);
    }
    map['action'] = Variable<String>(action);
    map['payload'] = Variable<String>(payload);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['retry_count'] = Variable<int>(retryCount);
    return map;
  }

  SyncQueueCompanion toCompanion(bool nullToAbsent) {
    return SyncQueueCompanion(
      id: Value(id),
      docType: Value(docType),
      docName: docName == null && nullToAbsent
          ? const Value.absent()
          : Value(docName),
      action: Value(action),
      payload: Value(payload),
      timestamp: Value(timestamp),
      retryCount: Value(retryCount),
    );
  }

  factory SyncQueueEntity.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SyncQueueEntity(
      id: serializer.fromJson<int>(json['id']),
      docType: serializer.fromJson<String>(json['docType']),
      docName: serializer.fromJson<String?>(json['docName']),
      action: serializer.fromJson<String>(json['action']),
      payload: serializer.fromJson<String>(json['payload']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      retryCount: serializer.fromJson<int>(json['retryCount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'docType': serializer.toJson<String>(docType),
      'docName': serializer.toJson<String?>(docName),
      'action': serializer.toJson<String>(action),
      'payload': serializer.toJson<String>(payload),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'retryCount': serializer.toJson<int>(retryCount),
    };
  }

  SyncQueueEntity copyWith({
    int? id,
    String? docType,
    Value<String?> docName = const Value.absent(),
    String? action,
    String? payload,
    DateTime? timestamp,
    int? retryCount,
  }) => SyncQueueEntity(
    id: id ?? this.id,
    docType: docType ?? this.docType,
    docName: docName.present ? docName.value : this.docName,
    action: action ?? this.action,
    payload: payload ?? this.payload,
    timestamp: timestamp ?? this.timestamp,
    retryCount: retryCount ?? this.retryCount,
  );
  SyncQueueEntity copyWithCompanion(SyncQueueCompanion data) {
    return SyncQueueEntity(
      id: data.id.present ? data.id.value : this.id,
      docType: data.docType.present ? data.docType.value : this.docType,
      docName: data.docName.present ? data.docName.value : this.docName,
      action: data.action.present ? data.action.value : this.action,
      payload: data.payload.present ? data.payload.value : this.payload,
      timestamp: data.timestamp.present ? data.timestamp.value : this.timestamp,
      retryCount: data.retryCount.present
          ? data.retryCount.value
          : this.retryCount,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SyncQueueEntity(')
          ..write('id: $id, ')
          ..write('docType: $docType, ')
          ..write('docName: $docName, ')
          ..write('action: $action, ')
          ..write('payload: $payload, ')
          ..write('timestamp: $timestamp, ')
          ..write('retryCount: $retryCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, docType, docName, action, payload, timestamp, retryCount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SyncQueueEntity &&
          other.id == this.id &&
          other.docType == this.docType &&
          other.docName == this.docName &&
          other.action == this.action &&
          other.payload == this.payload &&
          other.timestamp == this.timestamp &&
          other.retryCount == this.retryCount);
}

class SyncQueueCompanion extends UpdateCompanion<SyncQueueEntity> {
  final Value<int> id;
  final Value<String> docType;
  final Value<String?> docName;
  final Value<String> action;
  final Value<String> payload;
  final Value<DateTime> timestamp;
  final Value<int> retryCount;
  const SyncQueueCompanion({
    this.id = const Value.absent(),
    this.docType = const Value.absent(),
    this.docName = const Value.absent(),
    this.action = const Value.absent(),
    this.payload = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.retryCount = const Value.absent(),
  });
  SyncQueueCompanion.insert({
    this.id = const Value.absent(),
    required String docType,
    this.docName = const Value.absent(),
    required String action,
    required String payload,
    required DateTime timestamp,
    this.retryCount = const Value.absent(),
  }) : docType = Value(docType),
       action = Value(action),
       payload = Value(payload),
       timestamp = Value(timestamp);
  static Insertable<SyncQueueEntity> custom({
    Expression<int>? id,
    Expression<String>? docType,
    Expression<String>? docName,
    Expression<String>? action,
    Expression<String>? payload,
    Expression<DateTime>? timestamp,
    Expression<int>? retryCount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (docType != null) 'doc_type': docType,
      if (docName != null) 'doc_name': docName,
      if (action != null) 'action': action,
      if (payload != null) 'payload': payload,
      if (timestamp != null) 'timestamp': timestamp,
      if (retryCount != null) 'retry_count': retryCount,
    });
  }

  SyncQueueCompanion copyWith({
    Value<int>? id,
    Value<String>? docType,
    Value<String?>? docName,
    Value<String>? action,
    Value<String>? payload,
    Value<DateTime>? timestamp,
    Value<int>? retryCount,
  }) {
    return SyncQueueCompanion(
      id: id ?? this.id,
      docType: docType ?? this.docType,
      docName: docName ?? this.docName,
      action: action ?? this.action,
      payload: payload ?? this.payload,
      timestamp: timestamp ?? this.timestamp,
      retryCount: retryCount ?? this.retryCount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (docType.present) {
      map['doc_type'] = Variable<String>(docType.value);
    }
    if (docName.present) {
      map['doc_name'] = Variable<String>(docName.value);
    }
    if (action.present) {
      map['action'] = Variable<String>(action.value);
    }
    if (payload.present) {
      map['payload'] = Variable<String>(payload.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (retryCount.present) {
      map['retry_count'] = Variable<int>(retryCount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncQueueCompanion(')
          ..write('id: $id, ')
          ..write('docType: $docType, ')
          ..write('docName: $docName, ')
          ..write('action: $action, ')
          ..write('payload: $payload, ')
          ..write('timestamp: $timestamp, ')
          ..write('retryCount: $retryCount')
          ..write(')'))
        .toString();
  }
}

class $LocalDocumentsTable extends LocalDocuments
    with TableInfo<$LocalDocumentsTable, LocalDocumentEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalDocumentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _docTypeMeta = const VerificationMeta(
    'docType',
  );
  @override
  late final GeneratedColumn<String> docType = GeneratedColumn<String>(
    'doc_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _payloadMeta = const VerificationMeta(
    'payload',
  );
  @override
  late final GeneratedColumn<String> payload = GeneratedColumn<String>(
    'payload',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastUpdatedMeta = const VerificationMeta(
    'lastUpdated',
  );
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
    'last_updated',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isPendingSyncMeta = const VerificationMeta(
    'isPendingSync',
  );
  @override
  late final GeneratedColumn<bool> isPendingSync = GeneratedColumn<bool>(
    'is_pending_sync',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_pending_sync" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    docType,
    name,
    payload,
    lastUpdated,
    isPendingSync,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_documents';
  @override
  VerificationContext validateIntegrity(
    Insertable<LocalDocumentEntity> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('doc_type')) {
      context.handle(
        _docTypeMeta,
        docType.isAcceptableOrUnknown(data['doc_type']!, _docTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_docTypeMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('payload')) {
      context.handle(
        _payloadMeta,
        payload.isAcceptableOrUnknown(data['payload']!, _payloadMeta),
      );
    } else if (isInserting) {
      context.missing(_payloadMeta);
    }
    if (data.containsKey('last_updated')) {
      context.handle(
        _lastUpdatedMeta,
        lastUpdated.isAcceptableOrUnknown(
          data['last_updated']!,
          _lastUpdatedMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('is_pending_sync')) {
      context.handle(
        _isPendingSyncMeta,
        isPendingSync.isAcceptableOrUnknown(
          data['is_pending_sync']!,
          _isPendingSyncMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {docType, name};
  @override
  LocalDocumentEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalDocumentEntity(
      docType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}doc_type'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      payload: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payload'],
      )!,
      lastUpdated: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_updated'],
      )!,
      isPendingSync: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_pending_sync'],
      )!,
    );
  }

  @override
  $LocalDocumentsTable createAlias(String alias) {
    return $LocalDocumentsTable(attachedDatabase, alias);
  }
}

class LocalDocumentEntity extends DataClass
    implements Insertable<LocalDocumentEntity> {
  final String docType;
  final String name;
  final String payload;
  final DateTime lastUpdated;
  final bool isPendingSync;
  const LocalDocumentEntity({
    required this.docType,
    required this.name,
    required this.payload,
    required this.lastUpdated,
    required this.isPendingSync,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['doc_type'] = Variable<String>(docType);
    map['name'] = Variable<String>(name);
    map['payload'] = Variable<String>(payload);
    map['last_updated'] = Variable<DateTime>(lastUpdated);
    map['is_pending_sync'] = Variable<bool>(isPendingSync);
    return map;
  }

  LocalDocumentsCompanion toCompanion(bool nullToAbsent) {
    return LocalDocumentsCompanion(
      docType: Value(docType),
      name: Value(name),
      payload: Value(payload),
      lastUpdated: Value(lastUpdated),
      isPendingSync: Value(isPendingSync),
    );
  }

  factory LocalDocumentEntity.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalDocumentEntity(
      docType: serializer.fromJson<String>(json['docType']),
      name: serializer.fromJson<String>(json['name']),
      payload: serializer.fromJson<String>(json['payload']),
      lastUpdated: serializer.fromJson<DateTime>(json['lastUpdated']),
      isPendingSync: serializer.fromJson<bool>(json['isPendingSync']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'docType': serializer.toJson<String>(docType),
      'name': serializer.toJson<String>(name),
      'payload': serializer.toJson<String>(payload),
      'lastUpdated': serializer.toJson<DateTime>(lastUpdated),
      'isPendingSync': serializer.toJson<bool>(isPendingSync),
    };
  }

  LocalDocumentEntity copyWith({
    String? docType,
    String? name,
    String? payload,
    DateTime? lastUpdated,
    bool? isPendingSync,
  }) => LocalDocumentEntity(
    docType: docType ?? this.docType,
    name: name ?? this.name,
    payload: payload ?? this.payload,
    lastUpdated: lastUpdated ?? this.lastUpdated,
    isPendingSync: isPendingSync ?? this.isPendingSync,
  );
  LocalDocumentEntity copyWithCompanion(LocalDocumentsCompanion data) {
    return LocalDocumentEntity(
      docType: data.docType.present ? data.docType.value : this.docType,
      name: data.name.present ? data.name.value : this.name,
      payload: data.payload.present ? data.payload.value : this.payload,
      lastUpdated: data.lastUpdated.present
          ? data.lastUpdated.value
          : this.lastUpdated,
      isPendingSync: data.isPendingSync.present
          ? data.isPendingSync.value
          : this.isPendingSync,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalDocumentEntity(')
          ..write('docType: $docType, ')
          ..write('name: $name, ')
          ..write('payload: $payload, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('isPendingSync: $isPendingSync')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(docType, name, payload, lastUpdated, isPendingSync);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalDocumentEntity &&
          other.docType == this.docType &&
          other.name == this.name &&
          other.payload == this.payload &&
          other.lastUpdated == this.lastUpdated &&
          other.isPendingSync == this.isPendingSync);
}

class LocalDocumentsCompanion extends UpdateCompanion<LocalDocumentEntity> {
  final Value<String> docType;
  final Value<String> name;
  final Value<String> payload;
  final Value<DateTime> lastUpdated;
  final Value<bool> isPendingSync;
  final Value<int> rowid;
  const LocalDocumentsCompanion({
    this.docType = const Value.absent(),
    this.name = const Value.absent(),
    this.payload = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.isPendingSync = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalDocumentsCompanion.insert({
    required String docType,
    required String name,
    required String payload,
    required DateTime lastUpdated,
    this.isPendingSync = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : docType = Value(docType),
       name = Value(name),
       payload = Value(payload),
       lastUpdated = Value(lastUpdated);
  static Insertable<LocalDocumentEntity> custom({
    Expression<String>? docType,
    Expression<String>? name,
    Expression<String>? payload,
    Expression<DateTime>? lastUpdated,
    Expression<bool>? isPendingSync,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (docType != null) 'doc_type': docType,
      if (name != null) 'name': name,
      if (payload != null) 'payload': payload,
      if (lastUpdated != null) 'last_updated': lastUpdated,
      if (isPendingSync != null) 'is_pending_sync': isPendingSync,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalDocumentsCompanion copyWith({
    Value<String>? docType,
    Value<String>? name,
    Value<String>? payload,
    Value<DateTime>? lastUpdated,
    Value<bool>? isPendingSync,
    Value<int>? rowid,
  }) {
    return LocalDocumentsCompanion(
      docType: docType ?? this.docType,
      name: name ?? this.name,
      payload: payload ?? this.payload,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      isPendingSync: isPendingSync ?? this.isPendingSync,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (docType.present) {
      map['doc_type'] = Variable<String>(docType.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (payload.present) {
      map['payload'] = Variable<String>(payload.value);
    }
    if (lastUpdated.present) {
      map['last_updated'] = Variable<DateTime>(lastUpdated.value);
    }
    if (isPendingSync.present) {
      map['is_pending_sync'] = Variable<bool>(isPendingSync.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalDocumentsCompanion(')
          ..write('docType: $docType, ')
          ..write('name: $name, ')
          ..write('payload: $payload, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('isPendingSync: $isPendingSync, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $DocTypesTable docTypes = $DocTypesTable(this);
  late final $DocFieldsTable docFields = $DocFieldsTable(this);
  late final $SchemaVersionsTable schemaVersions = $SchemaVersionsTable(this);
  late final $SyncQueueTable syncQueue = $SyncQueueTable(this);
  late final $LocalDocumentsTable localDocuments = $LocalDocumentsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    docTypes,
    docFields,
    schemaVersions,
    syncQueue,
    localDocuments,
  ];
}

typedef $$DocTypesTableCreateCompanionBuilder =
    DocTypesCompanion Function({
      required String name,
      required String module,
      Value<int?> isSubmittable,
      Value<int?> istable,
      Value<int?> isSingle,
      Value<int?> custom,
      Value<String?> description,
      Value<int> rowid,
    });
typedef $$DocTypesTableUpdateCompanionBuilder =
    DocTypesCompanion Function({
      Value<String> name,
      Value<String> module,
      Value<int?> isSubmittable,
      Value<int?> istable,
      Value<int?> isSingle,
      Value<int?> custom,
      Value<String?> description,
      Value<int> rowid,
    });

final class $$DocTypesTableReferences
    extends BaseReferences<_$AppDatabase, $DocTypesTable, DocTypeEntity> {
  $$DocTypesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$DocFieldsTable, List<DocFieldEntity>>
  _docFieldsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.docFields,
    aliasName: $_aliasNameGenerator(db.docTypes.name, db.docFields.parent),
  );

  $$DocFieldsTableProcessedTableManager get docFieldsRefs {
    final manager = $$DocFieldsTableTableManager(
      $_db,
      $_db.docFields,
    ).filter((f) => f.parent.name.sqlEquals($_itemColumn<String>('name')!));

    final cache = $_typedResult.readTableOrNull(_docFieldsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$SchemaVersionsTable, List<SchemaVersionEntity>>
  _schemaVersionsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.schemaVersions,
    aliasName: $_aliasNameGenerator(
      db.docTypes.name,
      db.schemaVersions.docTypeName,
    ),
  );

  $$SchemaVersionsTableProcessedTableManager get schemaVersionsRefs {
    final manager = $$SchemaVersionsTableTableManager($_db, $_db.schemaVersions)
        .filter(
          (f) => f.docTypeName.name.sqlEquals($_itemColumn<String>('name')!),
        );

    final cache = $_typedResult.readTableOrNull(_schemaVersionsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$DocTypesTableFilterComposer
    extends Composer<_$AppDatabase, $DocTypesTable> {
  $$DocTypesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get module => $composableBuilder(
    column: $table.module,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get isSubmittable => $composableBuilder(
    column: $table.isSubmittable,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get istable => $composableBuilder(
    column: $table.istable,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get isSingle => $composableBuilder(
    column: $table.isSingle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get custom => $composableBuilder(
    column: $table.custom,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> docFieldsRefs(
    Expression<bool> Function($$DocFieldsTableFilterComposer f) f,
  ) {
    final $$DocFieldsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.name,
      referencedTable: $db.docFields,
      getReferencedColumn: (t) => t.parent,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DocFieldsTableFilterComposer(
            $db: $db,
            $table: $db.docFields,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> schemaVersionsRefs(
    Expression<bool> Function($$SchemaVersionsTableFilterComposer f) f,
  ) {
    final $$SchemaVersionsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.name,
      referencedTable: $db.schemaVersions,
      getReferencedColumn: (t) => t.docTypeName,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SchemaVersionsTableFilterComposer(
            $db: $db,
            $table: $db.schemaVersions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$DocTypesTableOrderingComposer
    extends Composer<_$AppDatabase, $DocTypesTable> {
  $$DocTypesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get module => $composableBuilder(
    column: $table.module,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get isSubmittable => $composableBuilder(
    column: $table.isSubmittable,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get istable => $composableBuilder(
    column: $table.istable,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get isSingle => $composableBuilder(
    column: $table.isSingle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get custom => $composableBuilder(
    column: $table.custom,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$DocTypesTableAnnotationComposer
    extends Composer<_$AppDatabase, $DocTypesTable> {
  $$DocTypesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get module =>
      $composableBuilder(column: $table.module, builder: (column) => column);

  GeneratedColumn<int> get isSubmittable => $composableBuilder(
    column: $table.isSubmittable,
    builder: (column) => column,
  );

  GeneratedColumn<int> get istable =>
      $composableBuilder(column: $table.istable, builder: (column) => column);

  GeneratedColumn<int> get isSingle =>
      $composableBuilder(column: $table.isSingle, builder: (column) => column);

  GeneratedColumn<int> get custom =>
      $composableBuilder(column: $table.custom, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  Expression<T> docFieldsRefs<T extends Object>(
    Expression<T> Function($$DocFieldsTableAnnotationComposer a) f,
  ) {
    final $$DocFieldsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.name,
      referencedTable: $db.docFields,
      getReferencedColumn: (t) => t.parent,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DocFieldsTableAnnotationComposer(
            $db: $db,
            $table: $db.docFields,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> schemaVersionsRefs<T extends Object>(
    Expression<T> Function($$SchemaVersionsTableAnnotationComposer a) f,
  ) {
    final $$SchemaVersionsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.name,
      referencedTable: $db.schemaVersions,
      getReferencedColumn: (t) => t.docTypeName,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SchemaVersionsTableAnnotationComposer(
            $db: $db,
            $table: $db.schemaVersions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$DocTypesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $DocTypesTable,
          DocTypeEntity,
          $$DocTypesTableFilterComposer,
          $$DocTypesTableOrderingComposer,
          $$DocTypesTableAnnotationComposer,
          $$DocTypesTableCreateCompanionBuilder,
          $$DocTypesTableUpdateCompanionBuilder,
          (DocTypeEntity, $$DocTypesTableReferences),
          DocTypeEntity,
          PrefetchHooks Function({bool docFieldsRefs, bool schemaVersionsRefs})
        > {
  $$DocTypesTableTableManager(_$AppDatabase db, $DocTypesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DocTypesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DocTypesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DocTypesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> name = const Value.absent(),
                Value<String> module = const Value.absent(),
                Value<int?> isSubmittable = const Value.absent(),
                Value<int?> istable = const Value.absent(),
                Value<int?> isSingle = const Value.absent(),
                Value<int?> custom = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DocTypesCompanion(
                name: name,
                module: module,
                isSubmittable: isSubmittable,
                istable: istable,
                isSingle: isSingle,
                custom: custom,
                description: description,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String name,
                required String module,
                Value<int?> isSubmittable = const Value.absent(),
                Value<int?> istable = const Value.absent(),
                Value<int?> isSingle = const Value.absent(),
                Value<int?> custom = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DocTypesCompanion.insert(
                name: name,
                module: module,
                isSubmittable: isSubmittable,
                istable: istable,
                isSingle: isSingle,
                custom: custom,
                description: description,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$DocTypesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({docFieldsRefs = false, schemaVersionsRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (docFieldsRefs) db.docFields,
                    if (schemaVersionsRefs) db.schemaVersions,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (docFieldsRefs)
                        await $_getPrefetchedData<
                          DocTypeEntity,
                          $DocTypesTable,
                          DocFieldEntity
                        >(
                          currentTable: table,
                          referencedTable: $$DocTypesTableReferences
                              ._docFieldsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$DocTypesTableReferences(
                                db,
                                table,
                                p0,
                              ).docFieldsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.parent == item.name,
                              ),
                          typedResults: items,
                        ),
                      if (schemaVersionsRefs)
                        await $_getPrefetchedData<
                          DocTypeEntity,
                          $DocTypesTable,
                          SchemaVersionEntity
                        >(
                          currentTable: table,
                          referencedTable: $$DocTypesTableReferences
                              ._schemaVersionsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$DocTypesTableReferences(
                                db,
                                table,
                                p0,
                              ).schemaVersionsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.docTypeName == item.name,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$DocTypesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $DocTypesTable,
      DocTypeEntity,
      $$DocTypesTableFilterComposer,
      $$DocTypesTableOrderingComposer,
      $$DocTypesTableAnnotationComposer,
      $$DocTypesTableCreateCompanionBuilder,
      $$DocTypesTableUpdateCompanionBuilder,
      (DocTypeEntity, $$DocTypesTableReferences),
      DocTypeEntity,
      PrefetchHooks Function({bool docFieldsRefs, bool schemaVersionsRefs})
    >;
typedef $$DocFieldsTableCreateCompanionBuilder =
    DocFieldsCompanion Function({
      required String fieldname,
      required String parent,
      required String fieldtype,
      required String label,
      Value<int?> reqd,
      Value<int?> hidden,
      Value<int?> readOnly,
      Value<String?> options,
      Value<String?> dependsOn,
      Value<int> rowid,
    });
typedef $$DocFieldsTableUpdateCompanionBuilder =
    DocFieldsCompanion Function({
      Value<String> fieldname,
      Value<String> parent,
      Value<String> fieldtype,
      Value<String> label,
      Value<int?> reqd,
      Value<int?> hidden,
      Value<int?> readOnly,
      Value<String?> options,
      Value<String?> dependsOn,
      Value<int> rowid,
    });

final class $$DocFieldsTableReferences
    extends BaseReferences<_$AppDatabase, $DocFieldsTable, DocFieldEntity> {
  $$DocFieldsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $DocTypesTable _parentTable(_$AppDatabase db) => db.docTypes
      .createAlias($_aliasNameGenerator(db.docFields.parent, db.docTypes.name));

  $$DocTypesTableProcessedTableManager get parent {
    final $_column = $_itemColumn<String>('parent')!;

    final manager = $$DocTypesTableTableManager(
      $_db,
      $_db.docTypes,
    ).filter((f) => f.name.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_parentTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$DocFieldsTableFilterComposer
    extends Composer<_$AppDatabase, $DocFieldsTable> {
  $$DocFieldsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get fieldname => $composableBuilder(
    column: $table.fieldname,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fieldtype => $composableBuilder(
    column: $table.fieldtype,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get label => $composableBuilder(
    column: $table.label,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get reqd => $composableBuilder(
    column: $table.reqd,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get hidden => $composableBuilder(
    column: $table.hidden,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get readOnly => $composableBuilder(
    column: $table.readOnly,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get options => $composableBuilder(
    column: $table.options,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get dependsOn => $composableBuilder(
    column: $table.dependsOn,
    builder: (column) => ColumnFilters(column),
  );

  $$DocTypesTableFilterComposer get parent {
    final $$DocTypesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.parent,
      referencedTable: $db.docTypes,
      getReferencedColumn: (t) => t.name,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DocTypesTableFilterComposer(
            $db: $db,
            $table: $db.docTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DocFieldsTableOrderingComposer
    extends Composer<_$AppDatabase, $DocFieldsTable> {
  $$DocFieldsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get fieldname => $composableBuilder(
    column: $table.fieldname,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fieldtype => $composableBuilder(
    column: $table.fieldtype,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get label => $composableBuilder(
    column: $table.label,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get reqd => $composableBuilder(
    column: $table.reqd,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get hidden => $composableBuilder(
    column: $table.hidden,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get readOnly => $composableBuilder(
    column: $table.readOnly,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get options => $composableBuilder(
    column: $table.options,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get dependsOn => $composableBuilder(
    column: $table.dependsOn,
    builder: (column) => ColumnOrderings(column),
  );

  $$DocTypesTableOrderingComposer get parent {
    final $$DocTypesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.parent,
      referencedTable: $db.docTypes,
      getReferencedColumn: (t) => t.name,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DocTypesTableOrderingComposer(
            $db: $db,
            $table: $db.docTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DocFieldsTableAnnotationComposer
    extends Composer<_$AppDatabase, $DocFieldsTable> {
  $$DocFieldsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get fieldname =>
      $composableBuilder(column: $table.fieldname, builder: (column) => column);

  GeneratedColumn<String> get fieldtype =>
      $composableBuilder(column: $table.fieldtype, builder: (column) => column);

  GeneratedColumn<String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumn<int> get reqd =>
      $composableBuilder(column: $table.reqd, builder: (column) => column);

  GeneratedColumn<int> get hidden =>
      $composableBuilder(column: $table.hidden, builder: (column) => column);

  GeneratedColumn<int> get readOnly =>
      $composableBuilder(column: $table.readOnly, builder: (column) => column);

  GeneratedColumn<String> get options =>
      $composableBuilder(column: $table.options, builder: (column) => column);

  GeneratedColumn<String> get dependsOn =>
      $composableBuilder(column: $table.dependsOn, builder: (column) => column);

  $$DocTypesTableAnnotationComposer get parent {
    final $$DocTypesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.parent,
      referencedTable: $db.docTypes,
      getReferencedColumn: (t) => t.name,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DocTypesTableAnnotationComposer(
            $db: $db,
            $table: $db.docTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DocFieldsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $DocFieldsTable,
          DocFieldEntity,
          $$DocFieldsTableFilterComposer,
          $$DocFieldsTableOrderingComposer,
          $$DocFieldsTableAnnotationComposer,
          $$DocFieldsTableCreateCompanionBuilder,
          $$DocFieldsTableUpdateCompanionBuilder,
          (DocFieldEntity, $$DocFieldsTableReferences),
          DocFieldEntity,
          PrefetchHooks Function({bool parent})
        > {
  $$DocFieldsTableTableManager(_$AppDatabase db, $DocFieldsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DocFieldsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DocFieldsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DocFieldsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> fieldname = const Value.absent(),
                Value<String> parent = const Value.absent(),
                Value<String> fieldtype = const Value.absent(),
                Value<String> label = const Value.absent(),
                Value<int?> reqd = const Value.absent(),
                Value<int?> hidden = const Value.absent(),
                Value<int?> readOnly = const Value.absent(),
                Value<String?> options = const Value.absent(),
                Value<String?> dependsOn = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DocFieldsCompanion(
                fieldname: fieldname,
                parent: parent,
                fieldtype: fieldtype,
                label: label,
                reqd: reqd,
                hidden: hidden,
                readOnly: readOnly,
                options: options,
                dependsOn: dependsOn,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String fieldname,
                required String parent,
                required String fieldtype,
                required String label,
                Value<int?> reqd = const Value.absent(),
                Value<int?> hidden = const Value.absent(),
                Value<int?> readOnly = const Value.absent(),
                Value<String?> options = const Value.absent(),
                Value<String?> dependsOn = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DocFieldsCompanion.insert(
                fieldname: fieldname,
                parent: parent,
                fieldtype: fieldtype,
                label: label,
                reqd: reqd,
                hidden: hidden,
                readOnly: readOnly,
                options: options,
                dependsOn: dependsOn,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$DocFieldsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({parent = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (parent) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.parent,
                                referencedTable: $$DocFieldsTableReferences
                                    ._parentTable(db),
                                referencedColumn: $$DocFieldsTableReferences
                                    ._parentTable(db)
                                    .name,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$DocFieldsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $DocFieldsTable,
      DocFieldEntity,
      $$DocFieldsTableFilterComposer,
      $$DocFieldsTableOrderingComposer,
      $$DocFieldsTableAnnotationComposer,
      $$DocFieldsTableCreateCompanionBuilder,
      $$DocFieldsTableUpdateCompanionBuilder,
      (DocFieldEntity, $$DocFieldsTableReferences),
      DocFieldEntity,
      PrefetchHooks Function({bool parent})
    >;
typedef $$SchemaVersionsTableCreateCompanionBuilder =
    SchemaVersionsCompanion Function({
      required String docTypeName,
      required String schemaHash,
      required DateTime lastSync,
      Value<int> rowid,
    });
typedef $$SchemaVersionsTableUpdateCompanionBuilder =
    SchemaVersionsCompanion Function({
      Value<String> docTypeName,
      Value<String> schemaHash,
      Value<DateTime> lastSync,
      Value<int> rowid,
    });

final class $$SchemaVersionsTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $SchemaVersionsTable,
          SchemaVersionEntity
        > {
  $$SchemaVersionsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $DocTypesTable _docTypeNameTable(_$AppDatabase db) =>
      db.docTypes.createAlias(
        $_aliasNameGenerator(db.schemaVersions.docTypeName, db.docTypes.name),
      );

  $$DocTypesTableProcessedTableManager get docTypeName {
    final $_column = $_itemColumn<String>('doc_type_name')!;

    final manager = $$DocTypesTableTableManager(
      $_db,
      $_db.docTypes,
    ).filter((f) => f.name.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_docTypeNameTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$SchemaVersionsTableFilterComposer
    extends Composer<_$AppDatabase, $SchemaVersionsTable> {
  $$SchemaVersionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get schemaHash => $composableBuilder(
    column: $table.schemaHash,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastSync => $composableBuilder(
    column: $table.lastSync,
    builder: (column) => ColumnFilters(column),
  );

  $$DocTypesTableFilterComposer get docTypeName {
    final $$DocTypesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.docTypeName,
      referencedTable: $db.docTypes,
      getReferencedColumn: (t) => t.name,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DocTypesTableFilterComposer(
            $db: $db,
            $table: $db.docTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SchemaVersionsTableOrderingComposer
    extends Composer<_$AppDatabase, $SchemaVersionsTable> {
  $$SchemaVersionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get schemaHash => $composableBuilder(
    column: $table.schemaHash,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastSync => $composableBuilder(
    column: $table.lastSync,
    builder: (column) => ColumnOrderings(column),
  );

  $$DocTypesTableOrderingComposer get docTypeName {
    final $$DocTypesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.docTypeName,
      referencedTable: $db.docTypes,
      getReferencedColumn: (t) => t.name,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DocTypesTableOrderingComposer(
            $db: $db,
            $table: $db.docTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SchemaVersionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SchemaVersionsTable> {
  $$SchemaVersionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get schemaHash => $composableBuilder(
    column: $table.schemaHash,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastSync =>
      $composableBuilder(column: $table.lastSync, builder: (column) => column);

  $$DocTypesTableAnnotationComposer get docTypeName {
    final $$DocTypesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.docTypeName,
      referencedTable: $db.docTypes,
      getReferencedColumn: (t) => t.name,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DocTypesTableAnnotationComposer(
            $db: $db,
            $table: $db.docTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SchemaVersionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SchemaVersionsTable,
          SchemaVersionEntity,
          $$SchemaVersionsTableFilterComposer,
          $$SchemaVersionsTableOrderingComposer,
          $$SchemaVersionsTableAnnotationComposer,
          $$SchemaVersionsTableCreateCompanionBuilder,
          $$SchemaVersionsTableUpdateCompanionBuilder,
          (SchemaVersionEntity, $$SchemaVersionsTableReferences),
          SchemaVersionEntity,
          PrefetchHooks Function({bool docTypeName})
        > {
  $$SchemaVersionsTableTableManager(
    _$AppDatabase db,
    $SchemaVersionsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SchemaVersionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SchemaVersionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SchemaVersionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> docTypeName = const Value.absent(),
                Value<String> schemaHash = const Value.absent(),
                Value<DateTime> lastSync = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SchemaVersionsCompanion(
                docTypeName: docTypeName,
                schemaHash: schemaHash,
                lastSync: lastSync,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String docTypeName,
                required String schemaHash,
                required DateTime lastSync,
                Value<int> rowid = const Value.absent(),
              }) => SchemaVersionsCompanion.insert(
                docTypeName: docTypeName,
                schemaHash: schemaHash,
                lastSync: lastSync,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$SchemaVersionsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({docTypeName = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (docTypeName) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.docTypeName,
                                referencedTable: $$SchemaVersionsTableReferences
                                    ._docTypeNameTable(db),
                                referencedColumn:
                                    $$SchemaVersionsTableReferences
                                        ._docTypeNameTable(db)
                                        .name,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$SchemaVersionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SchemaVersionsTable,
      SchemaVersionEntity,
      $$SchemaVersionsTableFilterComposer,
      $$SchemaVersionsTableOrderingComposer,
      $$SchemaVersionsTableAnnotationComposer,
      $$SchemaVersionsTableCreateCompanionBuilder,
      $$SchemaVersionsTableUpdateCompanionBuilder,
      (SchemaVersionEntity, $$SchemaVersionsTableReferences),
      SchemaVersionEntity,
      PrefetchHooks Function({bool docTypeName})
    >;
typedef $$SyncQueueTableCreateCompanionBuilder =
    SyncQueueCompanion Function({
      Value<int> id,
      required String docType,
      Value<String?> docName,
      required String action,
      required String payload,
      required DateTime timestamp,
      Value<int> retryCount,
    });
typedef $$SyncQueueTableUpdateCompanionBuilder =
    SyncQueueCompanion Function({
      Value<int> id,
      Value<String> docType,
      Value<String?> docName,
      Value<String> action,
      Value<String> payload,
      Value<DateTime> timestamp,
      Value<int> retryCount,
    });

class $$SyncQueueTableFilterComposer
    extends Composer<_$AppDatabase, $SyncQueueTable> {
  $$SyncQueueTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get docType => $composableBuilder(
    column: $table.docType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get docName => $composableBuilder(
    column: $table.docName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get action => $composableBuilder(
    column: $table.action,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get timestamp => $composableBuilder(
    column: $table.timestamp,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get retryCount => $composableBuilder(
    column: $table.retryCount,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SyncQueueTableOrderingComposer
    extends Composer<_$AppDatabase, $SyncQueueTable> {
  $$SyncQueueTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get docType => $composableBuilder(
    column: $table.docType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get docName => $composableBuilder(
    column: $table.docName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get action => $composableBuilder(
    column: $table.action,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get timestamp => $composableBuilder(
    column: $table.timestamp,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get retryCount => $composableBuilder(
    column: $table.retryCount,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SyncQueueTableAnnotationComposer
    extends Composer<_$AppDatabase, $SyncQueueTable> {
  $$SyncQueueTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get docType =>
      $composableBuilder(column: $table.docType, builder: (column) => column);

  GeneratedColumn<String> get docName =>
      $composableBuilder(column: $table.docName, builder: (column) => column);

  GeneratedColumn<String> get action =>
      $composableBuilder(column: $table.action, builder: (column) => column);

  GeneratedColumn<String> get payload =>
      $composableBuilder(column: $table.payload, builder: (column) => column);

  GeneratedColumn<DateTime> get timestamp =>
      $composableBuilder(column: $table.timestamp, builder: (column) => column);

  GeneratedColumn<int> get retryCount => $composableBuilder(
    column: $table.retryCount,
    builder: (column) => column,
  );
}

class $$SyncQueueTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SyncQueueTable,
          SyncQueueEntity,
          $$SyncQueueTableFilterComposer,
          $$SyncQueueTableOrderingComposer,
          $$SyncQueueTableAnnotationComposer,
          $$SyncQueueTableCreateCompanionBuilder,
          $$SyncQueueTableUpdateCompanionBuilder,
          (
            SyncQueueEntity,
            BaseReferences<_$AppDatabase, $SyncQueueTable, SyncQueueEntity>,
          ),
          SyncQueueEntity,
          PrefetchHooks Function()
        > {
  $$SyncQueueTableTableManager(_$AppDatabase db, $SyncQueueTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SyncQueueTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SyncQueueTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SyncQueueTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> docType = const Value.absent(),
                Value<String?> docName = const Value.absent(),
                Value<String> action = const Value.absent(),
                Value<String> payload = const Value.absent(),
                Value<DateTime> timestamp = const Value.absent(),
                Value<int> retryCount = const Value.absent(),
              }) => SyncQueueCompanion(
                id: id,
                docType: docType,
                docName: docName,
                action: action,
                payload: payload,
                timestamp: timestamp,
                retryCount: retryCount,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String docType,
                Value<String?> docName = const Value.absent(),
                required String action,
                required String payload,
                required DateTime timestamp,
                Value<int> retryCount = const Value.absent(),
              }) => SyncQueueCompanion.insert(
                id: id,
                docType: docType,
                docName: docName,
                action: action,
                payload: payload,
                timestamp: timestamp,
                retryCount: retryCount,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SyncQueueTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SyncQueueTable,
      SyncQueueEntity,
      $$SyncQueueTableFilterComposer,
      $$SyncQueueTableOrderingComposer,
      $$SyncQueueTableAnnotationComposer,
      $$SyncQueueTableCreateCompanionBuilder,
      $$SyncQueueTableUpdateCompanionBuilder,
      (
        SyncQueueEntity,
        BaseReferences<_$AppDatabase, $SyncQueueTable, SyncQueueEntity>,
      ),
      SyncQueueEntity,
      PrefetchHooks Function()
    >;
typedef $$LocalDocumentsTableCreateCompanionBuilder =
    LocalDocumentsCompanion Function({
      required String docType,
      required String name,
      required String payload,
      required DateTime lastUpdated,
      Value<bool> isPendingSync,
      Value<int> rowid,
    });
typedef $$LocalDocumentsTableUpdateCompanionBuilder =
    LocalDocumentsCompanion Function({
      Value<String> docType,
      Value<String> name,
      Value<String> payload,
      Value<DateTime> lastUpdated,
      Value<bool> isPendingSync,
      Value<int> rowid,
    });

class $$LocalDocumentsTableFilterComposer
    extends Composer<_$AppDatabase, $LocalDocumentsTable> {
  $$LocalDocumentsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get docType => $composableBuilder(
    column: $table.docType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastUpdated => $composableBuilder(
    column: $table.lastUpdated,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isPendingSync => $composableBuilder(
    column: $table.isPendingSync,
    builder: (column) => ColumnFilters(column),
  );
}

class $$LocalDocumentsTableOrderingComposer
    extends Composer<_$AppDatabase, $LocalDocumentsTable> {
  $$LocalDocumentsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get docType => $composableBuilder(
    column: $table.docType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastUpdated => $composableBuilder(
    column: $table.lastUpdated,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isPendingSync => $composableBuilder(
    column: $table.isPendingSync,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LocalDocumentsTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocalDocumentsTable> {
  $$LocalDocumentsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get docType =>
      $composableBuilder(column: $table.docType, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get payload =>
      $composableBuilder(column: $table.payload, builder: (column) => column);

  GeneratedColumn<DateTime> get lastUpdated => $composableBuilder(
    column: $table.lastUpdated,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isPendingSync => $composableBuilder(
    column: $table.isPendingSync,
    builder: (column) => column,
  );
}

class $$LocalDocumentsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LocalDocumentsTable,
          LocalDocumentEntity,
          $$LocalDocumentsTableFilterComposer,
          $$LocalDocumentsTableOrderingComposer,
          $$LocalDocumentsTableAnnotationComposer,
          $$LocalDocumentsTableCreateCompanionBuilder,
          $$LocalDocumentsTableUpdateCompanionBuilder,
          (
            LocalDocumentEntity,
            BaseReferences<
              _$AppDatabase,
              $LocalDocumentsTable,
              LocalDocumentEntity
            >,
          ),
          LocalDocumentEntity,
          PrefetchHooks Function()
        > {
  $$LocalDocumentsTableTableManager(
    _$AppDatabase db,
    $LocalDocumentsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocalDocumentsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LocalDocumentsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocalDocumentsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> docType = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> payload = const Value.absent(),
                Value<DateTime> lastUpdated = const Value.absent(),
                Value<bool> isPendingSync = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LocalDocumentsCompanion(
                docType: docType,
                name: name,
                payload: payload,
                lastUpdated: lastUpdated,
                isPendingSync: isPendingSync,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String docType,
                required String name,
                required String payload,
                required DateTime lastUpdated,
                Value<bool> isPendingSync = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LocalDocumentsCompanion.insert(
                docType: docType,
                name: name,
                payload: payload,
                lastUpdated: lastUpdated,
                isPendingSync: isPendingSync,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$LocalDocumentsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LocalDocumentsTable,
      LocalDocumentEntity,
      $$LocalDocumentsTableFilterComposer,
      $$LocalDocumentsTableOrderingComposer,
      $$LocalDocumentsTableAnnotationComposer,
      $$LocalDocumentsTableCreateCompanionBuilder,
      $$LocalDocumentsTableUpdateCompanionBuilder,
      (
        LocalDocumentEntity,
        BaseReferences<
          _$AppDatabase,
          $LocalDocumentsTable,
          LocalDocumentEntity
        >,
      ),
      LocalDocumentEntity,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$DocTypesTableTableManager get docTypes =>
      $$DocTypesTableTableManager(_db, _db.docTypes);
  $$DocFieldsTableTableManager get docFields =>
      $$DocFieldsTableTableManager(_db, _db.docFields);
  $$SchemaVersionsTableTableManager get schemaVersions =>
      $$SchemaVersionsTableTableManager(_db, _db.schemaVersions);
  $$SyncQueueTableTableManager get syncQueue =>
      $$SyncQueueTableTableManager(_db, _db.syncQueue);
  $$LocalDocumentsTableTableManager get localDocuments =>
      $$LocalDocumentsTableTableManager(_db, _db.localDocuments);
}
