part of '../base.imports.dart';

enum BlocStatus {
  initial,
  loading,
  closeLoading,
  failure,
  success,

  requestChanged,
  requestNotValidated,
  requestValidated,
  requestClosed,

  submissionGetLoading,
  submissionGetCanceled,
  submissionGetFailure,
  submissionGetSuccess,

  submissionPostLoading,
  submissionPostCanceled,
  submissionPostFailure,
  submissionPostSuccess,

  submissionUpdateLoading,
  submissionUpdateCanceled,
  submissionUpdateFailure,
  submissionUpdateSuccess,

  submissionDeleteLoading,
  submissionDeleteCanceled,
  submissionDeleteFailure,
  submissionDeleteSuccess,

  submissionSkipLoading,
  submissionSkipFailure,
  submissionSkipSuccess,

  submissionContinueLoading,
  submissionContinueFailure,
  submissionContinueSuccess,

  submissionCheckLoading,
  submissionCheckFailure,
  submissionCheckSuccess,

  loadMoreLoading,
  loadMoreFailure,
  loadMoreSuccess,

  refreshLoading,
  refreshFailure,
  refreshSuccess,

  searchLoading,
  searchFailure,
  searchSuccess,

  filterLoading,
  filterFailure,
  filterSuccess,
  ;

  bool get isSubmissionInitial => this == BlocStatus.initial;
  bool get isSubmissionLoading => this == BlocStatus.loading;
  bool get isSubmissionCloseLoading => this == BlocStatus.closeLoading;
  bool get isSubmissionSuccess => this == BlocStatus.success;
  bool get isSubmissionFailure => this == BlocStatus.failure;

  bool get isRequestChanged => this == BlocStatus.requestChanged;
  bool get isRequestNotValidated => this == BlocStatus.requestNotValidated;
  bool get isRequestValidated => this == BlocStatus.requestValidated;
  bool get isRequestClosed => this == BlocStatus.requestClosed;

  bool get isSubmissionGetLoading => this == BlocStatus.submissionGetLoading;
  bool get isSubmissionGetCanceled => this == BlocStatus.submissionGetCanceled;
  bool get isSubmissionGetSuccess => this == BlocStatus.submissionGetSuccess;
  bool get isSubmissionGetFailure => this == BlocStatus.submissionGetFailure;

  bool get isSubmissionPostLoading => this == BlocStatus.submissionPostLoading;
  bool get isSubmissionPostCanceled =>
      this == BlocStatus.submissionPostCanceled;
  bool get isSubmissionPostSuccess => this == BlocStatus.submissionPostSuccess;
  bool get isSubmissionPostFailure => this == BlocStatus.submissionPostFailure;

  bool get isSubmissionUpdateLoading =>
      this == BlocStatus.submissionUpdateLoading;
  bool get isSubmissionUpdateCanceled =>
      this == BlocStatus.submissionUpdateCanceled;
  bool get isSubmissionUpdateSuccess =>
      this == BlocStatus.submissionUpdateSuccess;
  bool get isSubmissionUpdateFailure =>
      this == BlocStatus.submissionUpdateFailure;

  bool get isSubmissionDeleteLoading =>
      this == BlocStatus.submissionDeleteLoading;
  bool get isSubmissionDeleteCanceled =>
      this == BlocStatus.submissionPostCanceled;
  bool get isSubmissionDeleteSuccess =>
      this == BlocStatus.submissionDeleteSuccess;
  bool get isSubmissionDeleteFailure =>
      this == BlocStatus.submissionDeleteFailure;

  bool get isLoadMoreLoading => this == BlocStatus.loadMoreLoading;
  bool get isLoadMoreSuccess => this == BlocStatus.loadMoreSuccess;
  bool get isLoadMoreFailure => this == BlocStatus.loadMoreFailure;

  bool get isRefreshLoading => this == BlocStatus.refreshLoading;
  bool get isRefreshSuccess => this == BlocStatus.refreshSuccess;
  bool get isRefreshFailure => this == BlocStatus.refreshFailure;

  bool get isSubmissionSkipLoading => this == BlocStatus.submissionSkipLoading;
  bool get isSubmissionSkipSuccess => this == BlocStatus.submissionSkipSuccess;
  bool get isSubmissionSkipFailure => this == BlocStatus.submissionSkipFailure;

  bool get isSubmissionContinueLoading =>
      this == BlocStatus.submissionContinueLoading;
  bool get isSubmissionContinueSuccess =>
      this == BlocStatus.submissionContinueSuccess;
  bool get isSubmissionContinueFailure =>
      this == BlocStatus.submissionContinueFailure;

  bool get isSubmissionCheckLoading =>
      this == BlocStatus.submissionCheckLoading;
  bool get isSubmissionCheckSuccess =>
      this == BlocStatus.submissionCheckSuccess;
  bool get isSubmissionCheckFailure =>
      this == BlocStatus.submissionCheckFailure;

  bool get isSearchLoading => this == BlocStatus.searchLoading;
  bool get isSearchSuccess => this == BlocStatus.searchSuccess;
  bool get isSearchFailure => this == BlocStatus.searchFailure;

  bool get isFilterLoading => this == BlocStatus.filterLoading;
  bool get isFilterSuccess => this == BlocStatus.filterSuccess;
  bool get isFilterFailure => this == BlocStatus.filterFailure;
}
